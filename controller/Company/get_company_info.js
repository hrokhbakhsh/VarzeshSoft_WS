var express = require('express')
    , pass = MODELES.company
    , router = express.Router();

router.all('/', function(req, res) {
    pass.GetCompanyInfo(function (err,result) {
        RESPOND.Response (err , {
            data : result ,
        } , res)
    })
});
module.exports = router
