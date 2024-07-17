'use strict';
const express = require('express');

// Constantes
const PORT = 8080;
const HOST = '0.0.0.0';
var os = require("os");

// Nous indiquons à notre serveur Express comment gérer une demande
const app = express();
app.get('/', (req, res) => {
	res.send('<center>Formation<br>Application web<font color="0000FF"><b> version 1</b> </font><br> Conteneur : <b>' +
	String(os.hostname()));
	});

app.listen(PORT, HOST);
console.log(String(os.hostname()));
