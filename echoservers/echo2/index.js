const express = require('express')
let app = express()
let config = require('./config')

app.all('*',(req,res) => {
    res.send('Alive');
});

app.listen(config.port,() => {
console.log('Server is listening in port', config.port)
});