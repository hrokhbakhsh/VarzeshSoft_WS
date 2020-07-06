var sql = require('mysql');

exports.performaction= function (params , callback){
    DBselect(params , function(err , dbresult){
        if (err){
            callback(err,"");
        }else{
            callback(null , dbresult)
        }
    });
}
var pool  = sql.createPool({
    connectionLimit : 99,
    host            : '127.0.0.1',
    user            : 'root',
    port            : 3306 ,
    password        : 'root',
    database        : 'varzeshsoft'
    // queueLimit : 100 ,
    // connectTimeout : 1000 ,
    // debug : false
});

function DBselect(params , dbresult){
    pool.getConnection(function(err, connection) {
        if (err){
            // LOGGER.error(err);
            dbresult(err)
        }else{
            connection.query({
                sql : params.sql,
                timeout : 7000,
                values : params.binds
            }, function (error, results, fields) {
                if (error){
                    connection.release();
                    // LOGGER.error(error);
                    dbresult(err,"");
                }
                else{
                    connection.release();
                    dbresult(null , results) ;
                }
            });
        }
    });
};
