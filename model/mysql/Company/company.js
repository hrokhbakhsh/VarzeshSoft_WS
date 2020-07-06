
var utils=require('../../dbutils');

var qryGetCompanyInfo =  "SELECT * FROM Company ";

exports.GetCompanyInfo= function (callback){
    utils.performaction({
        sql: qryGetCompanyInfo,
        binds : []
    } , function (err , result){
        callback(err , result) ;
    })
}