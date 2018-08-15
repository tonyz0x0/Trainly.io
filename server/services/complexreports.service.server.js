var app = require('../../express');
var complexReports = require('../../model/complexreports.model.server')

app.get('/api/complexreports/1', facultyCourseCatalogReport);
app.get('/api/complexreports/2/:topic', enrollmentForRelatedCourseTopicReport);
app.get('/api/complexreports/3/:rating', facultyRankedByRatingReport);
app.get('/api/complexreports/4/:userid', facultyCourseUnasweredQuestions);
app.get('/api/complexreports/5/:userid/:indication/:minscore', facultyCourseStudentAnswers);


function facultyCourseCatalogReport(req, resp) {
    complexReports.getCourseCatalogStatsByFaculty(function (err,rows) {
        if (err) {
            resp.status(400);
            resp.json(err);
        } else {
            resp.json(rows);
        }
    });
}

function enrollmentForRelatedCourseTopicReport(req, resp) {
    complexReports.getEnrollmentByRelatedCourseCategories(req.params.topic,function (err,rows) {
        if (err) {
            resp.status(400);
            resp.json(err);
        } else {
            resp.json(rows);
        }
    });
}

function facultyRankedByRatingReport(req, resp) {
    complexReports.getFacultiesRankedByRating(req.params.rating,function (err, rows) {
        if (err) {
            resp.status(400);
            resp.json(err);
        } else {
            resp.json(rows);
        }
    });
}

function facultyCourseUnasweredQuestions(req, resp) {
    complexReports.getUnansweredQuestionsPerCourse(req.params.userid, function (err, rows) {
        if (err) {
            resp.status(400);
            resp.json(err);
        } else {
            resp.json(rows);
        }
    });
}

function facultyCourseStudentAnswers(req, resp) {
    complexReports.getStudentQuestionAnswerForCourse(req.params.userid,req.params.indication,req.params.minscore,
        function (err, rows) {
            if (err) {
                resp.status(400);
                resp.json(err);
            } else {
                resp.json(rows);
            }
    });
}
