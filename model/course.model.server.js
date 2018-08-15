var db = require('../dbconnection');

var courseModel = {
    getAllCourses:function (callback) {
        return db.query("SELECT * FROM COURSE", callback);
    },
    getCourseById: function (id, callback) {
        return db.query("SELECT * FROM COURSE WHERE CourseId=?",[id], callback);
    },
    getTopics: function (callback) {
        return db.query("SELECT * FROM TOPIC", callback);
    }
};

module.exports = courseModel;