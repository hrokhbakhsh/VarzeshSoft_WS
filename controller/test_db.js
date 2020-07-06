var express = require('express')
    , pass = MODELES.test
    , router = express.Router();

router.all('/', function(req, res) {
    pass.test(function (err,result) {
        RESPOND.Response (err , {
            data : result ,
        } , res)
    })
});
module.exports = router
