const bcrypt = require('bcrypt');
const { render } = require('express/lib/response');
const mysql = require('mysql');

function renderManGrupo(req, res){
    req.session.errorM = "";
    req.session.dataCampos = "";  

    req.session.id_usuario = "";
    req.session.idEdi = ""; 

    try{
        res.redirect('/manGrupo'); // redirecciona a la ruta de manGrupo
    }catch{
        manAdm(req, res);
    }
}

function manGrupo(req, res) {
    const usuario = req.session.dataCampos;
    const error = req.session.errorM;
    
    req.getConnection((err, conn) => {
        
        conn.query('SELECT id_academia, nombre_academia, nombre_corto,id_cct FROM academia where id_cct=?',[req.session.idCt], (err, academias) => {
            if(err){
                console.log(err);
                return res.status(500).send("Error al obtener academias");
            }
            conn.query('SELECT id_turno, descripcion FROM turno', (err, turnos) => {
                if(err){
                    console.log(err);
                    return res.status(500).send("Error al obtener turnos");
                }

                console.log("academias ", academias);
                console.log("idCct ", req.session.idCt);            
                conn.query('SELECT id_grupo, grupo, semestre, tipo_semestre, id_academia, id_turno  FROM vista_grupos where id_cct = ? ORDER BY semestre, grupo', [req.session.idCt],(err, datos) => {
                    //console.log("datos ", datos);
                    if (datos.length > 0) {                                            
                        res.render('usuarios/administrador/Grupo/manGrupo', { 
                            datos: datos, 
                            turnos: turnos,
                            academias: academias, 
                            name: req.session.name, 
                            cct: req.session.idCt,
                            tipoUsuario: 2, 
                            usuario: usuario, 
                            error: error});
                            return;
                    } else {
                        res.render('usuarios/administrador/Grupo/manGrupo', { 
                            turnos: turnos,
                            academias: academias,
                            name: req.session.name, 
                            cct: req.session.idCt,
                            tipoUsuario: 2, 
                            usuario: usuario, 
                            error: error});
                            return;
                    }
                });
            });
        });
        
    });
}

function ediGrupo(req, res) {
    const usuario = req.session.dataCampos;
    const error = req.session.errorM;
    const idGrupo = req.query.id; // <-- Captura el id_docente de la URL

    req.getConnection((err, conn) => {
        if (err) {
            console.log("Error en la conexión:", err);
            return res.status(500).send("Error en la conexión");
        }
        conn.query('SELECT id_academia, nombre_academia, nombre_corto,id_cct FROM academia where id_cct=?',[req.session.idCt], (err, academias) => {
            if(err){
                console.log(err);
                return res.status(500).send("Error al obtener academias");
            }
            conn.query('SELECT id_turno, descripcion FROM turno', (err, turnos) => {
                if(err){
                    console.log(err);
                    return res.status(500).send("Error al obtener turnos");
                }
                console.log("academias ", academias);
                console.log("idCct ", req.session.idCt);            
                conn.query('SELECT id_grupo, grupo, semestre, tipo_semestre, id_academia, nombre_academia, id_turno,turno  FROM vista_grupos where id_cct = ? ORDER BY semestre, grupo', [req.session.idCt],(err, grupos) => {
                    if (err) {
                        console.log("Error al obtener materias:", err);
                        return res.status(500).send("Error al obtener materias");
                    }
                    let materia = null;
                    if (idGrupo) {
                        grupo = grupos.find(d => d.id_grupo == idGrupo);
                    }
                    console.log("academias ", academias);
                    console.log("idGrupo ", idGrupo);
                    console.log("grupo ", grupo);
                    res.render('usuarios/administrador/grupo/manGrupo', {
                        datos: grupos,
                        academias: academias,
                        turnos: turnos, 
                        grupo: grupo, // Pasa el grupo encontrado
                        modificar: idGrupo ? true : false, // Indica si se está editando un docente
                        name: req.session.name,
                        cct: req.session.idCt,
                        tipoUsuario: 2,
                        usuario: usuario,
                        error: error
                    });
                });
            });
        });
    });
}


function manipulaGrupo(req, res){
    const {
        id_materia,
        nombre,
        nomcor,
        semestre,
        horas,
        academia,
        especialidad,
        status 
    } = req.body;
    const usuario = req.session.dataCampos;
    const error = req.session.errorM;

    console.log("Formulario recibido:", req.body);
    req.getConnection((err, conn) => {
        if (err) {
            console.log("Error en la conexión:", err);
            return res.status(500).send("Error en la conexión");
        }

        // Verifica si se está editando o insertando
        if (id_materia) {
            // Editar materia existente
            const sql = 'UPDATE materia SET nombre = ?, nombre_corto = ?, semestre = ?, especialidad = ?, horas = ?, tipo_semestre = ?, id_academia = ?, id_status = ?, id_especialidad=? WHERE id_materia = ?';
            conn.query(sql, [nombre, nomcor, semestre,"x", horas, "x", academia, status,especialidad, id_materia ], (err) => {
                if (err) {
                    console.log("Error al actualizar la materia:", err);
                    return res.status(500).send("Error al actualizar materia");
                }
                req.session.errorM = "Grupo actualizado correctamente";
                res.redirect('/manGrupo');
            });
        } else {
            // Insertar nuevo docente
            const sql = 'INSERT INTO materia (nombre, nombre_corto, semestre, especialidad, horas, tipo_semestre, id_academia, id_status, id_cct,id_especialidad) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?,?)';
            const values = [nombre, nomcor, semestre, "x", horas, "X", academia, status,req.session.idCt,especialidad];

            // 👇 Aquí se imprime el query con los valores insertados
            console.log("Query a ejecutar:", mysql.format(sql, values));

            conn.query(sql, values, (err) => {
            if (err) {
                console.log("Error al insertar materia:", err);
                return res.status(500).send("Error al insertar materia");
            }

            req.session.errorM = "Grupo agregado correctamente";
            res.redirect('/manGrupo');
            });

        }
    });
}

    function borGrupo(req, res) {
        const usuario = req.session.dataCampos;
        const error = req.session.errorM;
        const idGrupo = req.query.id; // <-- Captura el id_docente desde la URL

        if (!idGrupo) {
            return res.status(400).send("Falta el ID de la materia");
        }

        req.getConnection((err, conn) => {
            if (err) {
                console.log("Error en la conexión:", err);
                return res.status(500).send("Error en la conexión");
            }

            const sql = 'DELETE FROM materia WHERE id_materia = ?';
            conn.query(sql, [idGrupo], (err, result) => {
                if (err) {
                    console.log("Error al eliminar docente:", err);
                    return res.status(500).send("Error al eliminar docente");
                }

                req.session.errorM = "";
                res.redirect('/manGrupo');
            });
        });
    }

//para llamar a las funciones
module.exports = {
    manGrupo,
    ediGrupo,
    borGrupo,
    manipulaGrupo,
    renderManGrupo,
};
