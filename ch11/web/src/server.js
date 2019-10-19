const express = require('express');
const mustacheExpress = require('mustache-express');
const os = require('os');
const { Client } = require('pg');

const app = express();
app.use(express.static('public'))
app.set('view engine', 'html');
app.engine('html', mustacheExpress());          // register file extension 
app.set('views', __dirname);

app.get('/',function(req,res){
    res.status(200).send('Pets Demo Application');
});

app.get('/animal',function(req,res){
    const client = new Client({
        user: process.env.POSTGRES_USER,
        password: process.env.POSTGRES_PASSWORD,
        database: process.env.POSTGRES_DB,
        host: 'db',
        port: 5432,
    })
    client.connect();

    const imageId = getRandomInt(12) + 1;
    const sql = 'SELECT * FROM images WHERE imageid=' + imageId;
    client.query(sql, (err, result) =>{
        const url = result.rows[0].url;
        console.log(url);
        res.render('index', {
                url: url,
                hostname: os.hostname()
            });
        client.end();
    })
});

function getRandomInt(max) {
    return Math.floor(Math.random() * Math.floor(max));
}

app.listen(3000, '0.0.0.0');

console.log("Listening at 0.0.0.0:3000");