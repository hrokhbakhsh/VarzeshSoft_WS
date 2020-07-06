
var utils=require('../../dbutils');

var qrySetMemberInfo = "CALL set_member (?, ?, ?, ?, ?, ?, ?) ";

exports.SetMemberInfo= function (params, callback){
    utils.performaction({
        sql: qrySetMemberInfo,
        binds : [params.Input.PhoneNumber,
                 params.Input.Gender,
                 params.Input.TokenKey,
                 params.Input.DeviceType,
                 params.Input.CompanyID,
                 params.Input.AppVersion,
                 params.Input.NowDate]
    } , function (err , result){
        callback(err , result) ;
    })
}