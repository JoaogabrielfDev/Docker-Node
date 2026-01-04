const express = require('express')

const PORT = 3000;
const HOST = '0.0.0.0';

const app = express();

app.get('/', (req, res) => {
    res.send('Hellow World this is my docker program');
});

app.listen(PORT, HOST)