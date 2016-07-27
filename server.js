var fs = require('fs');
var _ = require('underscore');
var app = require('express')();

var db = function() {
    return JSON.parse(fs.readFileSync(__dirname + '/data.json', {
        encoding: 'utf8'
    }));
};

app.get('/', function(req, res) {
    res.send('Hello World!');
});

app.get('/mac', function(req, res) {
    res.json(db());
});

app.post('/mac/:mac', function(req, res) {
    var mac = req.params.mac;

    res.json({
        'status': true
    });
});

app.listen(3000, function() {
    console.log('Example app listening on port 3000!');
});
