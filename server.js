var http = require('http')

var server = http.createServer(function(req, res) {
    res.end('Hello Node!');
});

server.listen(3000);
