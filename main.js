var app = require('express')();

app.post('/restart-studio-electricity-meter', function (req, res) {
    require('child_process').execSync("docker restart studio-electricity-meter"); 
    res.send('ok');
});

app.listen(1337, () =>{
    console.log('listening on 1337')
});