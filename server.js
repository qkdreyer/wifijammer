var fs = require('fs');
var app = require('express')();

app.get('/', function(req, res) {
    res.send('Hello World!');
});

app.get('/mac', function(req, res) {
    res.json(JSON.parse(fs.readFileSync(__dirname + '/database.json', {
        encoding: 'utf8'
    })));
});

app.listen(3000, function() {
    console.log('Example app listening on port 3000!');
});
