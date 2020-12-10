const express = require('express');
const api = express.Router();
const faker = require('faker');
let peticion;
let data;



api.get('/getPeticion', async (req, res) => {
    

    peticion = { 
        name: faker.name.jobDescriptor(),
        id: faker.random.alphaNumeric()
    };
    //data = JSON.parse(peticion);
    data = JSON.stringify(peticion);
    peticion = JSON.parse(data);
    res.json({peticion});
});

module.exports = api;