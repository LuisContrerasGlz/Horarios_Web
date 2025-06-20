//modulos
const express = require('express');
const manGrupoControllers = require('../../../controllers/administrador/grupo/manGrupo');
const router = express.Router();

// funciones para el super administrador
router.get('/renderManGrupo', manGrupoControllers.renderManGrupo);
router.get('/manGrupo', manGrupoControllers.manGrupo);
router.get('/ediGrupo', manGrupoControllers.ediGrupo);
router.post('/manipulaGrupo', manGrupoControllers.manipulaGrupo);
router.get('/borGrupo', manGrupoControllers.borGrupo);
module.exports = router;
