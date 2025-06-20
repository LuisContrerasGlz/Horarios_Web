const express = require('express');
const { engine } = require('express-handlebars');
const myconnection = require('express-myconnection');
const mysql = require('mysql');
const session = require('express-session');
const bodyParser = require('body-parser');
const { redirect } = require('express/lib/response');

///////////////////////////////////////////////////////////
/*                         Rutas                         */
//////////////////////////////////////////////////////////
const loginRouter = require('./router/loginR');
const manDocenteCotroller = require('./router/administrador/Docente/manDocenteR');
const manMateriaCotroller = require('./router/administrador/materia/manMateriaR');
const manAcademiaCotroller = require('./router/administrador/academia/manAcademiaR');
const manGrupoCotroller = require('./router/administrador/grupo/manGrupoR');

const app = express();
const PORT = 3000;

const exphbs = require('express-handlebars');

const hbs = exphbs.create({
  extname: '.hbs',
  helpers: {
    isEqual: (a, b, options) => {
      return a == b ? options.fn(this) : options.inverse(this); // coerción simple
    },
    isEqualInt: (a, b) => {
      return parseInt(a) === parseInt(b);
    }
  }
});


// 🟢 Aquí está el middleware de sesión que faltaba:
app.use(session({
    secret: 'clave_secreta_segura',
    resave: true,
    saveUninitialized: true
}));

// Middleware para manejar la conexión a la base de datos
app.use(myconnection(mysql, {
    host: 'localhost',
    user: 'root',
    password: '',
    port: 3306,
    database: 'sis_doc'
   }, 'single'));

// 👇 Esta línea es necesaria para que funcione req.body con formularios HTML
app.use(express.urlencoded({ extended: true }));
app.use(express.json()); // por si usas JSON en otras rutas

app.use(express.static('public'));
app.use(express.static(__dirname + '/public'));
app.use(express.static('funciones'));
app.use(express.static(__dirname + '/funciones'));
app.use('/', manDocenteCotroller);
app.use('/', manMateriaCotroller);
app.use('/', manAcademiaCotroller);
app.use('/', manGrupoCotroller);

app.set('views', __dirname + '/views');
app.engine('hbs', hbs.engine);
app.set('view engine', 'hbs');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.listen(PORT, () => {
    console.log(`Servidor escuchando en http://localhost:${PORT}`);
});

// rutas del login 
app.use('/', loginRouter);

app.get('/', (req, res) => {
    if (req.session && req.session.loggedin) {
        let name = req.session.name;
        let cct  = req.session.idCt;
        let tipoUsuario = req.session.tipoUsuario;
        let id = req.session.idUser;
        res.render('principal', { name, tipoUsuario, id });
    } else {
        res.redirect('/principal');
    }
});

app.get('/principal', (req, res) => {
    res.render('principal', {
        name: req.session?.name || '',
        tipoUsuario: req.session?.tipoUsuario || '',
        id: req.session?.idUser || '',
        cct: req.session?.idCt || ''
    });
});

