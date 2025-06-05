//modulos
const express = require('express');
const manDocenteControllers = require('../../../controllers/administrador/docente/manDocente');
const router = express.Router();

// funciones para el super administrador
router.get('/renderManDocente', manDocenteControllers.renderManDocente);
router.get('/manDocente', manDocenteControllers.manDocente);
router.get('/ediDocente', manDocenteControllers.ediDocente);
router.post('/manipulaDocente', manDocenteControllers.manipulaDocente);
router.get('/borDocente', manDocenteControllers.borDocente);
module.exports = router;
