var db = require('../dbconnection');

var studentCoursesModel = {
    getAllCompletedCourses: function(callback) {
        return db.query("SELECT * FROM COMPLETED_COURSES", callback);
    },
    getCompletedCoursesByTopicIdUserId: function (userId, topicId, callback) {
        return db.query("SELECT * FROM COMPLETED_COURSES INNER JOIN COURSE ON " +
            "COMPLETED_COURSES.CourseId = COURSE.CourseId" +
            " WHERE COMPLETED_COURSES.UserId = ? AND COURSE.TopicId = ?", [userId, topicId], callback);
    },
    getStudentCourseRankingList: function(studentId, callback) {
        return db.query("Select  COURSE.CourseId AS CourseId, COURSE.Name AS CourseName, Topic.Name AS PrimaryTopic,\n" +
            "SECONDARYNAME.Name AS SecondaryTopics, \n" +
            " (Select avg(CC.Rating) FROM COMPLETED_COURSES CC WHERE CC.CourseId = COURSE.CourseId) AS CourseRanking," +
            " COURSE_STATUS.CurrentStatus\n" +
            "FROM COURSE inner join " +
            "(SELECT CourseId, 'Enrolled' AS CurrentStatus FROM ENROLLED_COURSES where UserId = ? " +
            "AND  CourseId NOT IN (SELECT CourseId FROM COMPLETED_COURSES where UserId = ?) " +
            "UNION " +
            "SELECT CourseId, 'Completed' AS CurrentStatus FROM COMPLETED_COURSES where UserId = ? " +
            "UNION " +
            "SELECT CourseId, 'Interested' As CurrentStatus FROM INTERESTED_COURSES where UserId = ? " +
            "AND  CourseId NOT IN (SELECT CourseId FROM ENROLLED_COURSES where UserId = ?) " +
            "AND CourseID NOT IN (SELECT CourseId FROM COMPLETED_COURSES where UserId = ?)) COURSE_STATUS " +
            "ON COURSE.CourseId =  COURSE_STATUS.CourseId " +
            "INNER JOIN TOPIC ON TOPIC.TopicId = COURSE.TopicId " +
            "LEFT JOIN SECONDARY_TOPIC ON SECONDARY_TOPIC.CourseId = COURSE.CourseId " +
            "INNER JOIN TOPIC SECONDARYNAME ON SECONDARYNAME.TopicId = SECONDARY_TOPIC.TopicId " +
            "ORDER BY CourseRanking DESC",[studentId, studentId,studentId,studentId,studentId,studentId], callback);
    },
    enrollStudentInCourse: function (studentId, courseId, paymentCode, callback) {
        return db.query("INSERT INTO ENROLLED_COURSES (`UserId`, `CourseId`, `EnrolledDateTime`, `PaymentCode`)" +
            " VALUES (?, ?, NOW(), ?)",[studentId, courseId, paymentCode], callback);
    },
    getStudentAccountHistory: function (studentId, callback) {
        return db.query("SELECT ENROLLED_COURSES.CourseId AS CourseID, COURSE.Name AS CourseName ," +
            "UNIX_TIMESTAMP(ENROLLED_COURSES.EnrolledDateTime) AS EnrolledDate, " +
            "UNIX_TIMESTAMP(COMPLETED_COURSES.CompletedDateTime) AS CompletedDate, " +
            "ENROLLED_COURSES.PaymentCode AS PaymentCode, " +
            "COURSE.Cost AS Amount, " +
            "(SELECT SUM(COURSE.Cost) AS TotalSpent FROM ENROLLED_COURSES INNER JOIN COURSE " +
            "ON ENROLLED_COURSES.CourseId = COURSE.CourseId " +
            " WHERE ENROLLED_COURSES.UserId = ?) AS TotalSpent " +
            "FROM ENROLLED_COURSES INNER JOIN COURSE ON ENROLLED_COURSES.CourseId = COURSE.CourseId " +
            "LEFT JOIN COMPLETED_COURSES ON ENROLLED_COURSES.CourseId = COMPLETED_COURSES.CourseId " +
            "AND ENROLLED_COURSES.UserId =  COMPLETED_COURSES.UserId " +
            "WHERE ENROLLED_COURSES.UserId = ?", [studentId, studentId], callback);
    },
    getStudentCompletionCertificate: function (studentId, callback) {
        return db.query("SELECT concat(U.FirstName,' ', U.LastName) As Name," +
            " COURSE.Name AS CourseName, ENROLLED_COURSES.EnrolledDateTime as EnrolledTime, " +
            "COMPLETED_COURSES.CompletedDateTime AS CompleteTime " +
            "FROM COURSE INNER JOIN COMPLETED_COURSES ON COMPLETED_COURSES.CourseId = COURSE.CourseId " +
            "INNER JOIN ENROLLED_COURSES ON ENROLLED_COURSES.CourseId = COURSE.CourseId " +
            "INNER JOIN USER U ON U.UserId = COMPLETED_COURSES.UserId\n" +
            "WHERE COMPLETED_COURSES.UserId = ?", [studentId], callback)
    }
};

module.exports = studentCoursesModel;