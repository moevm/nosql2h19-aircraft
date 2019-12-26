const express = require('express');
const app = express();
var Request = require("request");


//=====================================================================================================================================================================
app.get('/', function (req, res) 
{

Request.post({
    "headers": { "content-type": "application/json",'Authorization': 'Basic bmVvNGo6bW9pZWQzZG1vaWVkM2Q=' },
    "url": "http://localhost:11003/db/data/transaction",
    "body": JSON.stringify({
        "statements": [{"statement" : "MATCH (n) return n;"}]
    })
}, (error, response, body) => {
    if(error) {
        return console.dir(error);
    }
    res.end(body);
});

});
//=====================================================================================================================================================================
app.get('/getEngines', function (req, res) 
{


Request.post({
    "headers": { "content-type": "application/json",'Authorization': 'Basic bmVvNGo6bW9pZWQzZG1vaWVkM2Q=' },
    "url": "http://localhost:11003/db/data/transaction",
    "body": JSON.stringify({
        "statements": [{"statement" : "MATCH (n:PlanePart{Name:'Engine'})RETURN n;"}]
    })
}, (error, response, body) => {
    if(error) {
        return console.dir(error);
    }
    res.end(body);
});

});
//=====================================================================================================================================================================
app.get('/getEngineParts', function (req, res) 
{
  

Request.post({
    "headers": { "content-type": "application/json",'Authorization': 'Basic bmVvNGo6bW9pZWQzZG1vaWVkM2Q=' },
    "url": "http://localhost:11003/db/data/transaction",
    "body": JSON.stringify({
        "statements": [{"statement" : "MATCH (n:EnginePart{partNumbers:"+req.query.engineNumber+"})RETURN n;"}]
    })
}, (error, response, body) => {
    if(error) {
        return console.dir(error);
    }
    res.end(body);
});

});
//=====================================================================================================================================================================
app.get('/getFuselages', function (req, res) 
{


Request.post({
    "headers": { "content-type": "application/json",'Authorization': 'Basic bmVvNGo6bW9pZWQzZG1vaWVkM2Q=' },
    "url": "http://localhost:11003/db/data/transaction",
    "body": JSON.stringify({
        "statements": [{"statement" : "MATCH (n:PlanePart{Name:'Plane Fuselage'})RETURN n;"}]
    })
}, (error, response, body) => {
    if(error) {
        return console.dir(error);
    }
    res.end(body);
});

});
//=====================================================================================================================================================================
app.get('/getFuselageParts', function (req, res) 
{
  

Request.post({
    "headers": { "content-type": "application/json",'Authorization': 'Basic bmVvNGo6bW9pZWQzZG1vaWVkM2Q=' },
    "url": "http://localhost:11003/db/data/transaction",
    "body": JSON.stringify({
        "statements": [{"statement" : "MATCH (n:FuselagePart{partNumbers:"+req.query.fuselageNumber+"})RETURN n;"}]
    })
}, (error, response, body) => {
    if(error) {
        return console.dir(error);
    }
    res.end(body);
});

});
//=====================================================================================================================================================================
app.get('/getWings', function (req, res) 
{ 
Request.post({
    "headers": { "content-type": "application/json",'Authorization': 'Basic bmVvNGo6bW9pZWQzZG1vaWVkM2Q=' },
    "url": "http://localhost:11003/db/data/transaction",
    "body": JSON.stringify({
        "statements": [{"statement" : "MATCH (n:PlanePart{Name:'Plane wings'})RETURN n;"}]
    })
}, (error, response, body) => {
    if(error) {
        return console.dir(error);
    }
    res.end(body);
});

    });
//=====================================================================================================================================================================
app.get('/getWingsPartes', function (req, res) 
{
  

Request.post({
    "headers": { "content-type": "application/json",'Authorization': 'Basic bmVvNGo6bW9pZWQzZG1vaWVkM2Q=' },
    "url": "http://localhost:11003/db/data/transaction",
    "body": JSON.stringify({
        "statements": [{"statement" : "MATCH (n:WingPart{partNumbers:"+req.query.wingNumber+"})RETURN n;"}]
    })
}, (error, response, body) => {
    if(error) {
        return console.dir(error);
    }
    res.end(body);
});

});
//=====================================================================================================================================================================





 
app.listen(3000)