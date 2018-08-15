var app = require('../../express');
var courseModel = require('../../model/course.model.server')

// ALL URLS
app.get('/api/course/:courseId?', getCourses);
app.get('/api/course/all/topics', getCourseTopics);


// functions
function getCourses(req,resp) {
    if(req.params['courseId']) {
        courseModel.getCourseById(req.params.courseId, function (err,rows) {
           if (err) {
               resp.json(err);
           } else {
               resp.json(rows);
           }
        });
    } else {
        courseModel.getAllCourses(function (err,rows) {
            if (err) {
                resp.json(err);
            } else {
                rows.forEach(function(v){ delete v.Icon });
                resp.json(rows);
            }
        });
    }
};

function getCourseTopics(req, resp) {
    courseModel.getTopics(function (err, rows) {
        if (err) {
            resp.json(err);
        } else {
            resp.json(rows);
        }
    });
};