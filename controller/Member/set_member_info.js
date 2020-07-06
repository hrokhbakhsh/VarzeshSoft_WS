var express = require('express')
    , pass = MODELES.Member
    , router = express.Router()
    , moment = require('moment-jalaali');


router.post('/', function(req, res) {

    var Input = {
       PhoneNumber: req.body.phone_number,
       TokenKey: req.body.token_key,
       Gender: req.body.gender,
       DeviceType: req.body.device_type,
       CompanyID: req.body.company_id,
       AppVersion: req.body.app_version,
       NowDate: moment().format("Y-M-D HH:mm:s")
    };

    pass.SetMemberInfo({Input: Input }, function (err,result) {
        RESPOND.Response (err , {
            data : result ,
        } , res)
    })
});

module.exports = router;
