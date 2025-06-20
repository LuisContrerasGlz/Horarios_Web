const bcrypt = require('bcrypt');
const { render } = require('express/lib/response');
const mysql = require('mysql');

function renderManMateria(req, res){
    req.session.errorM = "";
    req.session.dataCampos = "";  

    req.session.id_usuario = "";
    req.session.idEdi = ""; 

    try{
        res.redirect('/manMateria'); // redirecciona a la ruta de manMateria
    }catch{
        manAdm(req, res);
    }
}

function manMateria(req, res) {
    const usuario = req.session.dataCampos;
    const error = req.session.errorM;
    
    req.getConnection((err, conn) => {
        conn.query('SELECT id_especialidad, nombre_especialidad, nombre_corto,id_cct FROM especialidad where id_cct=?',[req.session.idCt], (err, especialidades) => {
            if(err){
                console.log(err);
                return res.status(500).send("Error al obtener academias");
            }
            conn.query('SELECT id_academia, nombre_academia, nombre_corto,id_cct FROM academia where id_cct=?',[req.session.idCt], (err, academias) => {
                if(err){
                    console.log(err);
                    return res.status(500).send("Error al obtener academias");
                }
                console.log("academias ", academias);
                console.log("idCct ", req.session.idCt);
                conn.query('SELECT id_status, descripcion FROM status', (err, status) => {
                    if (err) {
                        console.log("Error al obtener status:", err);
                        return res.status(500).send("Error al obtener status");
                    }
                    conn.query('SELECT id_materia, nombre_materia, nombre_corto, semestre, especialidad, horas, tipo_semestre, id_academia,nombre_academia, academia_corto, id_status, status_materia,id_cct,id_especialidad FROM vista_materias where id_cct = ? ORDER BY nombre_materia', [req.session.idCt],(err, datos) => {
                        //console.log("datos ", datos);
                        if (datos.length > 0) {                                            
                            res.render('usuarios/administrador/Materia/manMateria', { 
                                datos: datos, 
                                status: status,
                                especialidades: especialidades,
                                academias: academias, 
                                name: req.session.name, 
                                cct: req.session.idCt,
                                tipoUsuario: 2, 
                                usuario: usuario, 
                                error: error});
                                return;
                        } else {
                            res.render('usuarios/administrador/Materia/manMateria', { 
                                academias: academias,
                                status: status,
                                especialidades: especialidades,
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
    });
}

function ediMateria(req, res) {
    const usuario = req.session.dataCampos;
    const error = req.session.errorM;
    const idMateria = req.query.id; // <-- Captura el id_docente de la URL

    req.getConnection((err, conn) => {
        if (err) {
            console.log("Error en la conexión:", err);
            return res.status(500).send("Error en la conexión");
        }
        conn.query('SELECT id_especialidad, nombre_especialidad, nombre_corto,id_cct FROM especialidad where id_cct=?',[req.session.idCt], (err, especialidades) => {
            if(err){
                console.log(err);
                return res.status(500).send("Error al obtener academias");
            }
            // Consulta todos los turnos
            conn.query('SELECT id_academia, nombre_academia, nombre_corto FROM academia', (err, academias) => {
                if(err){
                    console.log(err);
                    return res.status(500).send("Error al obtener academias");
                }
                conn.query('SELECT id_status, descripcion FROM status', (err, status) => {
                    if (err) {
                        console.log("Error al obtener status:", err);
                        return res.status(500).send("Error al obtener status");
                    }
                    conn.query('SELECT id_materia, nombre_materia, nombre_corto, semestre, especialidad, horas, tipo_semestre, id_academia,nombre_academia, academia_corto, id_status, status_materia,id_cct,id_especialidad FROM vista_materias where id_cct = ? ORDER BY nombre_materia', [req.session.idCt],(err, materias) => {
                        if (err) {
                            console.log("Error al obtener materias:", err);
                            return res.status(500).send("Error al obtener materias");
                        }
                        let materia = null;
                        if (idMateria) {
                            materia = materias.find(d => d.id_materia == idMateria);
                        }
                        console.log("materias ", materias);
                        console.log("academias ", academias);
                        console.log("idMateria ", idMateria);
                        console.log("materia ", materia);
                        res.render('usuarios/administrador/Materia/manMateria', {
                            datos: materias,
                            academias: academias,
                            status: status, 
                            especialidades: especialidades,
                            materia: materia, 
                            modificar: idMateria ? true : false, // Indica si se está editando un docente
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
    });
}


function manipulaMateria(req, res){
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
                req.session.errorM = "Materia actualizado correctamente";
                res.redirect('/manMateria');
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

            req.session.errorM = "Materia agregado correctamente";
            res.redirect('/manMateria');
            });

        }
    });
}

    function borMateria(req, res) {
        const usuario = req.session.dataCampos;
        const error = req.session.errorM;
        const idMateria = req.query.id; // <-- Captura el id_docente desde la URL

        if (!idMateria) {
            return res.status(400).send("Falta el ID de la materia");
        }

        req.getConnection((err, conn) => {
            if (err) {
                console.log("Error en la conexión:", err);
                return res.status(500).send("Error en la conexión");
            }

            const sql = 'DELETE FROM materia WHERE id_materia = ?';
            conn.query(sql, [idMateria], (err, result) => {
                if (err) {
                    console.log("Error al eliminar docente:", err);
                    return res.status(500).send("Error al eliminar docente");
                }

                req.session.errorM = "";
                res.redirect('/manMateria');
            });
        });
    }

//para llamar a las funciones
module.exports = {
    manMateria,
    ediMateria,
    borMateria,
    manipulaMateria,
    renderManMateria,
};
