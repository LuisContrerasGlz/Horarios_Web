const bcrypt = require('bcrypt');
const { render } = require('express/lib/response');
const mysql = require('mysql');

function renderManDocente(req, res){
    req.session.errorM = "";
    req.session.dataCampos = "";  

    req.session.id_usuario = "";
    req.session.idEdi = ""; 

    try{
        res.redirect('/manDocente'); // redirecciona a la ruta de manDocente
    }catch{
        manAdm(req, res);
    }
}

function manDocente(req, res) {
    const usuario = req.session.dataCampos;
    const error = req.session.errorM;
    
    req.getConnection((err, conn) => {
        conn.query('SELECT id_turno,descripcion FROM turno', (err, turnos) => {
            if(err){
                console.log(err);
                return res.status(500).send("Error al obtener turnos");
            }
            conn.query('SELECT id_status, descripcion FROM status', (err, status) => {
                if (err) {
                    console.log("Error al obtener status:", err);
                    return res.status(500).send("Error al obtener status");
                }

                conn.query('SELECT id_docente, RFC, Nombre, Apellido_pat, Apellido_mat, Perfil, correo_e, Telefono, id_turno, id_cct, turno, centro_trabajo, id_status, status FROM vista_docente WHERE id_cct = ? ORDER BY Apellido_pat',[req.session.idCt],(err, rows) => {
                    if (rows.length > 0) {
                        //console.log("rows ", rows);
                        const datos = rows; 
                        //console.log("datos ", datos);
                        res.render('usuarios/administrador/Docente/manDocente', { 
                            datos: datos, 
                            status: status,
                            turnos: turnos, 
                            name: req.session.name, 
                            cct: req.session.idCt,
                            tipoUsuario: 2, 
                            usuario: usuario, 
                            error: error});
                            return;
                    } else {
                        res.render('usuarios/administrador/Docente/manDocente', { 
                            turnos: turnos,
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

function ediDocente(req, res) {
    const usuario = req.session.dataCampos;
    const error = req.session.errorM;
    const idDocente = req.query.id; // <-- Captura el id_docente de la URL

    req.getConnection((err, conn) => {
        if (err) {
            console.log("Error en la conexión:", err);
            return res.status(500).send("Error en la conexión");
        }

        // Consulta todos los turnos
        conn.query('SELECT id_turno, descripcion FROM turno', (err, turnos) => {
            if (err) {
                console.log("Error al obtener turnos:", err);
                return res.status(500).send("Error al obtener turnos");
            }
            conn.query('SELECT id_status, descripcion FROM status', (err, status) => {
                if (err) {
                    console.log("Error al obtener status:", err);
                    return res.status(500).send("Error al obtener status");
                }
            
                conn.query('SELECT id_docente, RFC, Nombre, Apellido_pat, Apellido_mat, Perfil, correo_e, Telefono, id_turno, id_cct, turno, centro_trabajo, id_status, status FROM vista_docente WHERE id_cct = ? ORDER BY Apellido_pat',[req.session.idCt],(err, docentes) => {
                    if (err) {
                        console.log("Error al obtener docentes:", err);
                        return res.status(500).send("Error al obtener docentes");
                    }
                    // Busca un docente específico si se pasó el id
                    let docente = null;
                    if (idDocente) {
                        docente = docentes.find(d => d.id_docente == idDocente);
                    }
                    console.log("docentes ", docentes);
                    console.log("turnos ", turnos);
                    console.log("idDocente ", idDocente);
                    console.log("docente ", docente);
                    res.render('usuarios/administrador/Docente/manDocente', {
                        datos: docentes,
                        turnos: turnos,
                        status: status, 
                        docente: docente, 
                        modificar: idDocente ? true : false, // Indica si se está editando un docente
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


function manipulaDocente(req, res){
    const {
        id_docente,
        rfc,
        nombre,
        appat,
        apmat,
        perfil,
        correo_electronico,
        telefono,
        turno,
        id_cct,
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
        if (id_docente) {
            // Editar docente existente
            const sql = 'UPDATE docente SET RFC = ?, Nombre = ?, Apellido_pat = ?, Apellido_mat = ?, Perfil = ?, correo_e = ?, Telefono = ?, id_turno = ?, id_cct = ?, id_status = ? WHERE id_docente = ?';
            conn.query(sql, [rfc, nombre, appat, apmat, perfil, correo_electronico, telefono, turno, req.session.idCt, status, id_docente], (err) => {
                if (err) {
                    console.log("Error al actualizar docente:", err);
                    return res.status(500).send("Error al actualizar docente");
                }
                req.session.errorM = "Docente actualizado correctamente";
                res.redirect('/manDocente');
            });
        } else {
            // Insertar nuevo docente
            const sql = 'INSERT INTO docente (RFC, Nombre, Apellido_pat, Apellido_mat, Perfil, correo_e, Telefono, id_turno, id_cct, id_status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?,?)';
            const values = [rfc, nombre, appat, apmat, perfil, correo_electronico, telefono, turno, req.session.idCt,1];

            // 👇 Aquí se imprime el query con los valores insertados
            console.log("Query a ejecutar:", mysql.format(sql, values));

            conn.query(sql, values, (err) => {
            if (err) {
                console.log("Error al insertar docente:", err);
                return res.status(500).send("Error al insertar docente");
            }

            req.session.errorM = "Docente agregado correctamente";
            res.redirect('/manDocente');
            });

        }
    });
}

    function borDocente(req, res) {
        const usuario = req.session.dataCampos;
        const error = req.session.errorM;
        const idDocente = req.query.id; // <-- Captura el id_docente desde la URL

        if (!idDocente) {
            return res.status(400).send("Falta el ID del docente");
        }

        req.getConnection((err, conn) => {
            if (err) {
                console.log("Error en la conexión:", err);
                return res.status(500).send("Error en la conexión");
            }

            const sql = 'DELETE FROM docente WHERE id_docente = ?';
            conn.query(sql, [idDocente], (err, result) => {
                if (err) {
                    console.log("Error al eliminar docente:", err);
                    return res.status(500).send("Error al eliminar docente");
                }

                req.session.errorM = "Docente eliminado correctamente";
                res.redirect('/manDocente');
            });
        });
    }









//para llamar a las funciones
module.exports = {
    manDocente,
    ediDocente,
    borDocente,
    manipulaDocente,
    renderManDocente,
};
