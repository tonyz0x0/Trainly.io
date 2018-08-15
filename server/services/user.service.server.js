var app = require('../../express');
var userModel = require('../../model/user.model.server');
var jwt = require('jsonwebtoken');

// ALL URLS
app.post('/api/users/authenticate', authenticateUser);
app.post('/api/users', register);
app.post('/api/faculty/authorize', authorizeFaculty);
app.post('/api/admin/authorize', authorizeAdmin);
app.get('/api/faculty/pending', pendingFacultyValidationRequests);

function register(req,res) {
    var user = req.body;

    userModel.createUser(user , function (err,rows) {
            if(err){
                res.status(400);
                res.json({ success: false, message: 'User creation failed'});
            }
            else{
                res.json({ success: true });
            }
        });
}


function authenticateUser(req, res) {
    if (typeof req.body.username !== 'undefined' && typeof req.body.password !== 'undefined') {
        var username = req.body.username.trim();
        var password = req.body.password.trim();
        userModel.authenticate(username, password, function (err, rows) {
            if (err || rows.length == 0) {
                res.status(400);
                res.json({success: false});
            } else {
                var token = jwt.sign({ email: rows[0].Email, fullName: rows[0].FirstName, _id: rows[0].UserId }, 'Trainly');
                rows[0]['token'] = token;
                res.json(JSON.parse(JSON.stringify(rows[0])));
            }
        });
    } else {
        res.status(400);
        res.json({success: false});
    }
}

function authorizeFaculty(req, res) {
    if (typeof req.body.authorizingUser !== 'undefined'
        && typeof req.body.authorizedUser !== 'undefined') {
        var authorizingUser = req.body.authorizingUser.trim();
        var authorizedUser = req.body.authorizedUser.trim();
        userModel.authorizeFaculty(authorizingUser, authorizedUser, function (err, rows) {
            if (err) {
                var response = {success: false, message: 'Failed to authorize user faculty access. '+ err.sqlMessage};
                res.json(response);
            } else {
                res.json({success:true, message: 'User with email '+ authorizedUser + ' is now a validated faculty'});
            }
        });
    } else {
        res.status(400);
        res.json({success: false, message: 'Invalid Request.'});
    }
}

function authorizeAdmin(req, res) {
    if (typeof req.body.authorizingUser !== 'undefined'
        && typeof req.body.authorizedUser !== 'undefined') {
        var authorizingUser = req.body.authorizingUser;
        var authorizedUser = req.body.authorizedUser;
        userModel.authenticateAdmin(authorizingUser, authorizedUser, function (err, rows) {
            if (err) {
                res.status(400);
                res.json({success: false, message: 'Failed to authorize user admin access. '+ err.sqlMessage});
            } else {
                res.json({success: true, message: 'User upgraded to admin access'});
            }
        });
    }
}

function pendingFacultyValidationRequests(req, res) {
    userModel.pendingFacultyValidationRequests(function (err, rows) {
        if (err) {
            res.status(400);
            res.json({success: false, message: 'Failed to authorize user admin access. '+ err.sqlMessage});
        } else {
            res.json(rows);
        }

    });
}

exports.loginRequired = function(req, res, next) {
    if (req.user) {
        next();
    } else {
        return res.status(401).json({ message: 'Unauthorized user!' });
    }
};

