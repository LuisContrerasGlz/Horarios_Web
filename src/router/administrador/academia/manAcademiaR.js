//modulos
const express = require('express');
const manAcademiaControllers = require('../../../controllers/administrador/academia/manAcademia');
const router = express.Router();

// funciones para el super administrador
router.get('/renderManAcademia', manAcademiaControllers.renderManAcademia);
router.get('/manAcademia', manAcademiaControllers.manAcademia);
router.get('/ediAcademia', manAcademiaControllers.ediAcademia);
router.post('/manipulaAcademia', manAcademiaControllers.manipulaAcademia);
router.get('/borAcademia', manAcademiaControllers.borAcademia);
module.exports = router;
