
var utils=require('../../dbutils');
var sql =  "select * from gender_type ";
exports.test= function (callback){
    utils.performaction({
        sql: sql,
        binds : []
    } , function (err , result){
        callback(err , result) ;
    })
}