//importing node framework
var express = require('express');
 
var app = express();
//Respond with "hello world" for requests that hit our root "/"
app.get('/', function (req, res) {
 res.send('hello Pramod, Hello world');
});
//listen to port 3005 by default
app.listen(process.env.PORT || 3005);
 
module.exports = app;
