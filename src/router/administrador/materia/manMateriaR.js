//modulos
const express = require('express');
const manMateriaControllers = require('../../../controllers/administrador/materia/manMateria');
const router = express.Router();

// funciones para el super administrador
router.get('/renderManMateria', manMateriaControllers.renderManMateria);
router.get('/manMateria', manMateriaControllers.manMateria);
router.get('/ediMateria', manMateriaControllers.ediMateria);
router.post('/manipulaMateria', manMateriaControllers.manipulaMateria);
router.get('/borMateria', manMateriaControllers.borMateria);
module.exports = router;
