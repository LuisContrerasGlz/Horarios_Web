const bcrypt = require('bcrypt');
const { render } = require('express/lib/response');
const mysql = require('mysql');

function renderManAcademia(req, res){
    req.session.errorM = "";
    req.session.dataCampos = "";  

    req.session.id_usuario = "";
    req.session.idEdi = ""; 

    try{
        res.redirect('/manAcademia'); // redirecciona a la ruta de manAcademia
    }catch{
        manAdm(req, res);
    }
}

function manAcademia(req, res) {
    const usuario = req.session.dataCampos;
    const error = req.session.errorM;
    
    req.getConnection((err, conn) => {
        conn.query('SELECT id_status, descripcion FROM status', (err, status) => {
            if (err) {
                console.log("Error al obtener status:", err);
                return res.status(500).send("Error al obtener status");
            }
            
            conn.query('SELECT id_academia, nombre_academia, nombre_corto, id_status,status_academia FROM vista_academias where id_cct = ? ORDER BY nombre_academia', [req.session.idCt],(err, datos) => {
                console.log("datos ", datos);
                if (datos.length > 0) {                                            
                    res.render('usuarios/administrador/academia/manAcademia', { 
                        datos: datos, 
                        status: status, 
                        name: req.session.name, 
                        cct: req.session.idCt,
                        tipoUsuario: 2, 
                        usuario: usuario, 
                        error: error});
                        return;
                } else {
                    res.render('usuarios/administrador/academia/manAcademia', { 
                        status: status,
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
}

function ediAcademia(req, res) {
    const usuario = req.session.dataCampos;
    const error = req.session.errorM;
    const idAcademia = req.query.id; // <-- Captura el id_docente de la URL

    req.getConnection((err, conn) => {
        if (err) {
            console.log("Error en la conexión:", err);
            return res.status(500).send("Error en la conexión");
        }

        // Consulta todos los turnos
        
        conn.query('SELECT id_status, descripcion FROM status', (err, status) => {
            if (err) {
                console.log("Error al obtener status:", err);
                return res.status(500).send("Error al obtener status");
            }
            conn.query('SELECT id_academia, nombre_academia, nombre_corto, id_status,status_academia FROM vista_academias where id_cct = ? ORDER BY nombre_academia', [req.session.idCt],(err, academias) => {
                if (err) {
                    console.log("Error al obtener academias:", err);
                    return res.status(500).send("Error al obtener academias");
                }
                let academia = null;
                if (idAcademia) {
                    academia = academias.find(d => d.id_academia == idAcademia);
                }
                console.log("academias ", academias);
                console.log("academias ", academias);
                console.log("idAcademia ", idAcademia);
                console.log("academia ", academia);
                res.render('usuarios/administrador/Academia/manAcademia', {
                    datos: academias,
                    status: status, 
                    academia: academia, 
                    modificar: idAcademia ? true : false, // Indica si se está editando un docente
                    name: req.session.name,
                    cct: req.session.idCt,
                    tipoUsuario: 2,
                    usuario: usuario,
                    error: error
                });
            });
        });        
    });
}


function manipulaAcademia(req, res){
    const {
        id_academia,
        nombre,
        nomcor,
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
        if (id_academia) {
            // Editar academia existente
            const sql = 'UPDATE academia SET nombre_academia = ?, nombre_corto = ?, id_status = ? WHERE id_academia = ?';
            conn.query(sql, [nombre, nomcor, status, id_academia ], (err) => {
                if (err) {
                    console.log("Error al actualizar la academia:", err);
                    return res.status(500).send("Error al actualizar academia");
                }
                req.session.errorM = "Academia actualizado correctamente";
                res.redirect('/manAcademia');
            });
        } else {
            // Insertar nuevo docente
            const sql = 'INSERT INTO academia (nombre_academia, nombre_corto, id_status, id_cct) VALUES (?, ?, ?, ?)';
            const values = [nombre, nomcor, status,req.session.idCt];

            // 👇 Aquí se imprime el query con los valores insertados
            console.log("Query a ejecutar:", mysql.format(sql, values));

            conn.query(sql, values, (err) => {
            if (err) {
                console.log("Error al insertar academia:", err);
                return res.status(500).send("Error al insertar academia");
            }

            req.session.errorM = "Academia agregado correctamente";
            res.redirect('/manAcademia');
            });

        }
    });
}

    function borAcademia(req, res) {
        const usuario = req.session.dataCampos;
        const error = req.session.errorM;
        const idAcademia = req.query.id; // <-- Captura el id_docente desde la URL

        if (!idAcademia) {
            return res.status(400).send("Falta el ID de la academia");
        }

        req.getConnection((err, conn) => {
            if (err) {
                console.log("Error en la conexión:", err);
                return res.status(500).send("Error en la conexión");
            }

            const sql = 'DELETE FROM academia WHERE id_academia = ?';
            conn.query(sql, [idAcademia], (err, result) => {
                if (err) {
                    console.log("Error al eliminar docente:", err);
                    return res.status(500).send("Error al eliminar docente");
                }

                req.session.errorM = "";
                res.redirect('/manAcademia');
            });
        });
    }

//para llamar a las funciones
module.exports = {
    manAcademia,
    ediAcademia,
    borAcademia,
    manipulaAcademia,
    renderManAcademia,
};
