var db = require('../dbconnection');
var bcrypt = require('bcrypt-nodejs');

var userModel = {

    createUser: function (user, callback) {
        return db.query("INSERT INTO USER (`Email`, `Password`, `ProfilePicture`, `FirstName`, `LastName`, `Street`, `City`, `Country`, `PostalCode`) " +
            " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?) ",
            [user.username.trim(), bcrypt.hashSync(user.password), null, user.firstName, user.lastName, user.street, user.city, user.country, user.postalcode], callback);

    },
    authenticate: function (email, password, callback) {
        return db.query("SELECT * FROM USER WHERE Email=? limit 1", [email.trim()], function (err, rows) {
            if (rows && rows.length == 1 && bcrypt.compareSync(password, rows[0].Password)) {
                callback(err, rows);
            } else {
                callback("not valid", null);
            }
        });
    },
    isAdmin: function (email, password, callback) {
        var sql = "SELECT 1 FROM USER u WHERE u.Email=? and u.HashPassword=? and u.IsAdmin=1 limit 1"
        return db.query(sql, [email, hash(password)], callback);
    },
    authorizeFaculty: function (Aemail, Femali, callback) {

        var insertSql = "INSERT INTO `VALIDATE` (`AdminId`, `FacultyId`, `DateTime`) " +
            " SELECT (SELECT UserId FROM USER where email = ?)," +
            "(SELECT UserId FROM USER where email = ?),NOW() ";
        var updateSql = "UPDATE USER U INNER JOIN FACULTY F \n" +
            " ON U.UserId = F.FacultyId SET U.IsFaculty=1, F.Validated=1\n" +
            " WHERE U.Email=? ";

        return db.getConnection(function (err, connection) {
            connection.beginTransaction(function (err) {
                if (err) {
                    callback(err,null);
                } else {
                    connection.query(updateSql, [Femali], function (err, result) {
                        if (err) {
                            connection.rollback(function () {
                                callback(err,null);
                            });
                        } else {
                            connection.query(insertSql, [Aemail, Femali], function (err, result) {
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
    },
    authenticateAdmin: function (Aemail, Gemail, callback) {
        var sql = "\"INSERT INTO `ADMINISTRATOR` (`AdminId`, `DateTime`, `GrantorId`)\" +\n" +
            "        \"SELECT (SELECT UserId FROM USER where email = ?),\" +\n" +
            "        \"NOW(),\" +\n" +
            "            \"(SELECT UserId FROM USER where email = ? );\""
        return db.query(sql, [Aemail, Gemail], callback)
    },
    pendingFacultyValidationRequests: function (callback) {
        return db.query("SELECT CONCAT(FirstName,' ',LastName) AS Name , Email, Title," +
            " Affiliation, WorkWebsite,City, " +
            "Country FROM FACULTY INNER JOIN USER ON FACULTY.FacultyId=USER.UserId AND Validated=0", callback);
    }
};

module.exports = userModel;