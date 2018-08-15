var db = require('../dbconnection');

var complexReports = {
    getCourseCatalogStatsByFaculty:function (callback) {
        return db.query("SELECT FACULTY_COURSE_DATA.*, " +
            "CASE WHEN FACULTY_COURSE_DATA.EnrolledCount > 0 " +
            "THEN  ROUND(FACULTY_COURSE_DATA.CompletedCount/FACULTY_COURSE_DATA.EnrolledCount * 100, 2) " +
            " ELSE 0 END AS CourseCompletionPercentage  FROM " +
            "(SELECT CONCAT(U.FirstName,' ',U.LastName) AS FacultyName, C.Name, " +
            "(SELECT COUNT(*) FROM INTERESTED_COURSES WHERE CourseId=C.CourseId) AS InterestedCount, " +
            "(SELECT COUNT(*) FROM ENROLLED_COURSES WHERE CourseId=C.CourseId) AS EnrolledCount, " +
            "(SELECT COUNT(*) FROM COMPLETED_COURSES WHERE CourseId=C.CourseId) AS CompletedCount, " +
            "(SELECT ROUND(AVG(Rating),2) FROM COMPLETED_COURSES WHERE CourseId=C.CourseId) AS AverageCourseRating " +
            " FROM FACULTY F INNER JOIN COURSE_CREATOR CC ON F.FacultyId = CC.CreatorId " +
            "INNER JOIN COURSE C ON C.CourseId = CC.CourseId " +
            "INNER JOIN USER U ON U.UserId = F.FacultyId) FACULTY_COURSE_DATA " +
            "ORDER BY CourseCompletionPercentage DESC, AverageCourseRating DESC", callback);
    },
    getEnrollmentByRelatedCourseCategories: function (topic, callback) {
        return db.query("SELECT Name AS TopicName , SUM(CourseEnrolledCount) AS TopicEnrolledCount, " +
            "SUM(CourseCompletedCount) AS TopicCompletedCount FROM " +
            "(SELECT TOPIC_RESULT.Name, " +
            "(SELECT COUNT(*) FROM ENROLLED_COURSES E WHERE E.CourseId = C.CourseId) AS CourseEnrolledCount, " +
            "(SELECT COUNT(*) FROM COMPLETED_COURSES CC WHERE CC.CourseId = C.CourseId) AS CourseCompletedCount " +
            " FROM COURSE C, (SELECT TopicId,Name FROM TOPIC WHERE name IN (?)) TOPIC_RESULT" +
            " WHERE C.TopicId = TOPIC_RESULT.TopicId " +
            " OR C.CourseId IN (SELECT CourseId FROM SECONDARY_TOPIC ST WHERE ST.TopicId=TOPIC_RESULT.TopicId)) " +
            " TOPIC_COURSE_SUMMARY GROUP BY TOPIC_COURSE_SUMMARY.Name",[topic], callback);
    },
    getFacultiesRankedByRating: function (minrating, callback) {
        return db.query("SELECT CONCAT(U.FirstName,' ',U.LastName) AS FacultyName, AVG(COM.Rating) AS AverageRating, " +
            "(SELECT COUNT(*) FROM COURSE_CREATOR WHERE CreatorId = F.FacultyId) AS CoursesOfferedCount " +
            " FROM FACULTY F  INNER JOIN USER U ON U.UserId = F.FacultyId " +
            " INNER JOIN COURSE_CREATOR CC ON F.FacultyId = CC.CreatorId " +
            "INNER JOIN COURSE C ON C.CourseId = CC.CourseId " +
            "INNER JOIN COMPLETED_COURSES COM ON COM.CourseId = C.CourseId " +
            "GROUP BY U.UserId HAVING AverageRating >= ? " +
            "ORDER BY AverageRating DESC, CoursesOfferedCount DESC", [minrating], callback);
    },
    getUnansweredQuestionsPerCourse: function (facultyId, callback) {
        return db.query("SELECT C.CourseId,C.Name AS CourseName, M.MaterialId, M.Name AS MaterialName, " +
            "count(*) UnansweredQuestions " +
            "FROM FACULTY F INNER JOIN COURSE_CREATOR CC ON F.FacultyId = CC.CreatorId " +
            "INNER JOIN COURSE C ON C.CourseId = CC.CourseId " +
            "INNER JOIN MATERIAL M ON C.CourseId = M.CourseId " +
            "INNER JOIN QUESTION_RELATE_MATERIALS QRM ON M.MaterialId = QRM.MaterialId " +
            "WHERE F.FacultyId = ? AND NOT EXISTS (SELECT 1 FROM ANSWER WHERE QuestionId = QRM.QuestionId) " +
            "GROUP BY C.CourseId,M.MaterialId ORDER BY COUNT(*) DESC", [facultyId], callback);
    },
    getStudentQuestionAnswerForCourse: function(facultyId,indication,minscore,callback) {
        return db.query("SELECT concat(USER.FirstName,' ', USER.LastName) AS StudentName, " +
            "COURSE_SPE.Name AS CourseName, QUIZ_SIXTY.Name AS QuizName, " +
            "QUIZ_QUESTION.Text AS Question, ANSWER.Text AS Answer, ANSWER.Feedback " +
            "FROM USER INNER JOIN ENROLLED_COURSES ON USER.UserId = ENROLLED_COURSES.UserId " +
            "INNER JOIN (SELECT COURSE.CourseId, COURSE.Name " +
            "FROM COURSE INNER JOIN COURSE_CREATOR ON COURSE.CourseId = COURSE_CREATOR.CourseId " +
            "INNER JOIN FACULTY ON FACULTY.FacultyId = COURSE_CREATOR.CreatorId " +
            "WHERE FacultyId = ?) COURSE_SPE ON ENROLLED_COURSES.CourseId = COURSE_SPE.CourseId " +
            "INNER JOIN (SELECT MATERIAL.MaterialId, MATERIAL.Name, MATERIAL.CourseId " +
            "FROM MATERIAL INNER JOIN QUIZ ON MATERIAL.MaterialId = QUIZ.MaterialId " +
            "WHERE QUIZ.MinimumPassScore > ?) QUIZ_SIXTY ON COURSE_SPE.CourseId = QUIZ_SIXTY.CourseId " +
            "INNER JOIN QUIZ_QUESTION ON QUIZ_SIXTY.MaterialId = QUIZ_QUESTION.MaterialId " +
            "INNER JOIN (SELECT QUIZ_QUESTION_ANSWER.MaterialId, QUIZ_QUESTION_ANSWER.QuestionId, " +
            "QUIZ_QUESTION_ANSWER.Text, QUIZ_QUESTION_ANSWER.Feedback " +
            " FROM QUIZ_QUESTION_ANSWER WHERE Indication LIKE ?) ANSWER " +
            " ON QUIZ_QUESTION.QuestionId = ANSWER.QuestionId " +
            "ORDER BY COURSE_SPE.Name DESC, QuizName ASC, StudentName ASC",[facultyId, minscore,indication], callback);
    }
};

module.exports = complexReports;