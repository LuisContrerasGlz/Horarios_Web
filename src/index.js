// importa las librerías necesarias
const express = require('express');
const { engine } = require('express-handlebars');
const myconnection =require('express-myconnection');
const mysql= require('mysql');
const session=require('express-session');
const bodyParser = require('body-parser');
const { redirect } = require('express/lib/response');

//crea una instancia de aplicación Express.
const app = express();
// define el puerto en el que se ejecutará la aplicación.
const PORT = 3000;

// Middleware para parsear JSON
app.use(express.json());

// Middleware para parsear datos de formularios
// parsear -> analizar una cadena de texto o datos para convertirla en una estructura 
// que una computadora pueda entender o procesar.
const Handlebars=require('handlebars');
Handlebars.registerHelper('isEqual', function(value1,value2,options) {
    return value1 == value2 ? options.fn(this) : options.inverse(this);
});


//definiciones para las carpetas de archivos
app.use(express.static('public'))
app.use(express.static(__dirname + '/public'));

app.use(express.static('funciones'))
app.use(express.static(__dirname + '/funciones'));

app.set('views',__dirname + '/views' );
app.engine('.hbs', engine({
    extname: '.hbs',
}));

//utiliza Handlebars (hbs) como motor de plantillas para renderizar vistas HTML.
app.set('view engine', 'hbs');

//parsear los datos que llegan en las solicitudes HTTP. 
//permite que tu servidor pueda recibir y entender datos 
//enviados en formularios y en JSON.
app.use(bodyParser.urlencoded({
    extended: true
}))
app.use(bodyParser.json());


// Iniciar servidor
app.listen(PORT, () => {
    console.log(`Servidor escuchando en http://localhost:${PORT}`);
});

app.get('/', (req, res) => {
	res.render('principal', { name, tipoUsuario, id});
});
