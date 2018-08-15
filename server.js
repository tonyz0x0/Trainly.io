var app = require('./express');
var cookieParser = require('cookie-parser');
var session      = require('express-session');
var passport = require('passport');
var bodyParser = require('body-parser');
var jsonwebtoken = require("jsonwebtoken");


require('dotenv').config();

app.use(cookieParser());
app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded
app.set('view engine', 'ejs');
app.use(app.express.static(__dirname + '/public'));
require("./server/app");

/*app.use(function(req, res, next) {
    if (req.headers && req.headers.authorization && req.headers.authorization.split(' ')[0] === 'JWT') {
        jsonwebtoken.verify(req.headers.authorization.split(' ')[1], 'Trainly', function(err, decode) {
            if (err) req.user = undefined;
            req.user = decode;
            next();
        });
    } else {
        req.user = undefined;
        next();
    }
});*/
app.listen(process.env.PORT || 8800);