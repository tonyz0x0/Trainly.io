var app = require('../../express');
var studentcoursesModel = require('../../model/studentcourses.model.server')

// ALL URLS
app.get('/api/studentcourses/completed/:userId/:topicId', getCompletedCoursesByUserAndTopic);
app.get('/api/studentcourses/list/:userId', getStudentCourseRankingList);
app.post('/api/studentcourses/enroll/', enrollStudentInCourse);
app.get('/api/studentcourses/history/:userId', getStudentAccountHistory);
app.get('/api/studentcourses/certificate/:userId', getStudentCourseCompletionCertificates);

function getCompletedCoursesByUserAndTopic(req, resp) {
    studentcoursesModel.getCompletedCoursesByTopicIdUserId(req.params.userId, req.params.topicId, function (err,rows) {
        if (err) {
            resp.json(err);
        } else {
            resp.json(rows);
        }
    });
};


function getStudentCourseRankingList(req, resp) {
    studentcoursesModel.getStudentCourseRankingList(req.params.userId, function (err, rows) {
        var courseData;
        if (err) {
            resp.json(err);
        } else {
            courseData = JSON.parse(JSON.stringify(rows));
            var courseSecondaryTopics = courseData.reduce(function (r, row) {
                r[row.CourseId] = r[row.CourseId] || [];
                r[row.CourseId].push(row.SecondaryTopics);
                return r;
            }, Object.create(null));
            var courseIdMap = courseData.map(function (row) { return row.CourseId; });
            var uniqueCourses = courseData.filter(function (row, pos) {
                return courseIdMap.indexOf(row.CourseId) == pos;
            });
            uniqueCourses.forEach(function(course) {
               course.SecondaryTopics = courseSecondaryTopics[course.CourseId].join(", ");
            });
            resp.json(uniqueCourses);
        }
    });
}

function enrollStudentInCourse(req, resp) {
    var response;
    if (typeof req.body.CourseId !== 'undefined' && typeof req.body.UserId !== 'undefined') {
        var studentId = req.body.UserId;
        var courseId = req.body.CourseId;
        var paymentCode = processPayment();
        studentcoursesModel.enrollStudentInCourse(studentId,courseId, paymentCode, function (err, rows) {
                if (!err){
                    if (rows.affectedRows == 1) {
                        response= {success : true,
                            'message' : 'User with id ' + studentId + " is now enrolled in course " + courseId
                            +". Payment code is " + paymentCode};
                    } else {
                        response = {success: false,'message' : 'Failed to enroll user for course. Please try after sometime'};
                    }
                    resp.json(response);
                } else {
                    response = {success: false,'message' : err.sqlMessage};
                    resp.status(400);
                    resp.json(response);
                }

        });
    } else {
        response = {success: false, 'message' : 'CourseId and UserId are required fields'};
        resp.status(400);
        resp.json(response);
    }
}

function getStudentAccountHistory(req, resp) {
    studentcoursesModel.getStudentAccountHistory(req.params.userId, function (err, rows) {
        var accountHistory = {};
        var queryResult;
        if (err) {
            resp.status(400);
            resp.json(err);
        } else {
            queryResult = JSON.parse(JSON.stringify(rows));
            accountHistory['TotalSpent'] = 0;
            accountHistory['History'] = [];
            if (queryResult.length > 0) {
                accountHistory['TotalSpent'] = queryResult[0].TotalSpent;
            }
            queryResult.forEach(function (courseHistory) {
                delete courseHistory['TotalSpent'];
                accountHistory['History'].push(courseHistory)
            });
            resp.json(accountHistory);
        }
    });

}

function getStudentCourseCompletionCertificates(req, resp) {
    studentcoursesModel.getStudentCompletionCertificate(req.params.userId, function (err,rows) {
        var studentCertificates = {};
        studentCertificates['Name'] = null;
        studentCertificates['CompletedCourses'] = [];
        var queryResult;
        if (err) {
            resp.status(400);
            resp.json(err);
        } else {
            queryResult = JSON.parse(JSON.stringify(rows));
            if (queryResult.length > 0) {
                studentCertificates['Name'] = queryResult[0].Name;
            }
            queryResult.forEach(function (courseHistory) {
                delete courseHistory['Name'];
                studentCertificates['CompletedCourses'].push(courseHistory)
            });
            resp.json(studentCertificates);
        }
    });
}

function processPayment() {
    function generateCode() {
        return Math.floor((1 + Math.random()) * 0x10000)
            .toString(16)
            .substring(1);
    }
    // return random code
    return generateCode() + generateCode() + generateCode();
}

