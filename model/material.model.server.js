var db = require('../dbconnection');

var materialModel = {
    showMaterial: function (userid, courseid, callback) {
        return db.query("SELECT MATERIAL.MaterialId AS MaterialId, MATERIAL.Name AS MaterialName , \"completed\" AS Status\n" +
            ",CourseId FROM MATERIAL WHERE CourseId = ? AND MaterialId\n" +
            "IN (SELECT MaterialId FROM COMPLETED_MATERIALS\n" +
            "WHERE UserId = ?)\n" +
            "UNION ALL\n" +
            "SELECT MATERIAL.MaterialId AS Material_Id,  MATERIAL.Name AS MaterialName, \"not completed\" AS Status\n" +
            ",CourseId FROM MATERIAL WHERE CourseId = ? AND MaterialId\n" +
            "NOT IN (SELECT MaterialId FROM COMPLETED_MATERIALS\n" +
            "WHERE UserId = ?);", [courseid, userid, courseid, userid], callback);
    },

    completeMaterial: function (userid, materialid, courseId, callback) {
        var insertSql = "INSERT INTO `COMPLETED_MATERIALS`  (`UserId`, `MaterialId`, `CompletedDateTime`)\n" +
            "VALUES (?, ?, NOW())";
        var completedSql = "INSERT INTO COMPLETED_COURSES\n" +
            " SELECT C.UserId,C.CourseId,NOW(),'Good',5 FROM ENROLLED_COURSES C WHERE C.UserId=? AND C.CourseId=? AND NOT EXISTS\n" +
            "            (SELECT 1 FROM MATERIAL M WHERE CourseId=C.CourseId AND MaterialId NOT IN (\n" +
            "            SELECT MaterialId FROM COMPLETED_MATERIALS WHERE UserId=?))" ;
        return db.getConnection(function (err, connection) {
            connection.beginTransaction(function (err) {
                if (err) {
                    callback(err,null);
                } else {
                    connection.query(insertSql, [userid, materialid], function (err, result) {
                        if (err) {
                            connection.rollback(function () {
                                callback(err,null);
                            });
                        } else {
                            connection.query(completedSql, [userid, courseId, userid], function (err, result) {
                                if (err) {
                                    connection.rollback(function () {
                                        callback(err,null);
                                    });
                                } else {
                                    connection.commit(function (err) {
                                        if (err) {
                                            connection.rollback(function () {
                                                callback(err,null);
                                            });
                                        } else {
                                            callback(null, {});

                                        }
                                    });
                                }
                            });

                        }

                    });

                }

            });
        });

    }
};
module.exports = materialModel;