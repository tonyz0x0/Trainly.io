/*create a mysql connection pool */
var mysql=require('mysql');
var connection=mysql.createPool({
    host:'localhost',
    user:'trainlyio',
    password:'trainlyio',
    database:'Trainly'

});

connection.getConnection(function(err,connection){
    if(err) {
        console.log('Trainly Database Connetion failed:' + err);
    }
});

module.exports=connection;