const bcrypt = require('bcrypt');
const { render } = require('express/lib/response');

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
        conn.query('SELECT id_turno,descripcion FROM turno', (err, rows) => {
            if(err){
                console.log(err);
            }
            if (rows.length > 0) {
                const turnos = rows;
                conn.query('SELECT id_docente, RFC, Nombre, Apellido_pat, Apellido_mat, Perfil, correo_e, Telefono, id_turno, id_cct, turno, centro_trabajo FROM vista_docente', (err, rows) => {
                    if (rows.length > 0) {
                        console.log("rows ", rows);
                        const datos = rows; 
                        console.log("datos ", datos);
                        res.render('usuarios/administrador/Docente/manDocente', { 
                            datos: datos, 
                            turnos: turnos, 
                            name: req.session.name, 
                            tipoUsuario: 2, 
                            usuario: usuario, 
                            error: error});
                            return;
                    } else {
                        res.render('usuarios/administrador/Docente/manDocente', { 
                            turnos: turnos,
                            name: req.session.name, 
                            tipoUsuario: 2, 
                            usuario: usuario, 
                            error: error});
                            return;
                    }
                });
            } else {
                return res.status(500).send("Error no hay status");
            }
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
            //const turnos = rows; 
            // Consulta todos los docentes
            conn.query('SELECT id_docente, RFC, Nombre, Apellido_pat, Apellido_mat, Perfil, correo_e, Telefono, id_turno, id_cct, turno, centro_trabajo FROM vista_docente', (err, docentes) => {
                if (err) {
                    console.log("Error al obtener docentes:", err);
                    return res.status(500).send("Error al obtener docentes");
                }
                //const docentes = rows; 
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
                    docente: docente, // Nuevo parámetro
                    modificar: idDocente ? true : false, // Indica si se está editando un docente
                    name: req.session.name,
                    tipoUsuario: 2,
                    usuario: usuario,
                    error: error
                });
            });
        });
    });
}




function manipulaDocente(req, res){
    const data = req.body;
    const idMod = req.session.id_usuario;

    req.session.idEdi = idMod; 
    let passIgual;

    if (idMod){
        if (data.password == "" && data.confPassword == ""){
            passIgual = true;
        }
    }

    if (!passIgual){
        if (data.password !== data.confPassword) {
            req.session.errorM = 'Error: La contraseña y la confirmación no coinciden';
            req.session.dataCampos = data;
            
            if (idMod){
                ediDocente(req, res);
            }else{
                manDocente(req, res);
            }
            return;
        }
    }
    //conceccion con la base de datos
    req.getConnection((err, conn) => {
        let consulta;
        let parametros;

        if (idMod){
            consulta = 'SELECT * FROM usuario WHERE (correo_electronico = ? OR nombre = ? OR telefono = ?) AND id_usuario != ?';
            parametros = [data.correo_electronico, data.nombre, data.telefono, idMod];
        }else{
            consulta = 'SELECT * FROM usuario WHERE correo_electronico = ? OR nombre = ? OR telefono = ?';
            parametros = [data.correo_electronico, data.nombre, data.telefono];
        }
        conn.query(consulta, parametros, (err, userdata) => {
            if (userdata.length > 0) {
                //console.log(userdata.length);
                req.session.errorM = 'Error: El usuario ya existe o el correo o el teléfono ya existe!';
                req.session.dataCampos = data;
                if (idMod){
                    ediDocente(req, res);
                }else{
                    manDocente(req, res);
                }
                return;
            }else {
                if (passIgual){
                    req.getConnection((err, conn) => {

                        // consulta para actualizar datos del administrador con la misma contraseña
                        const consulta2 = 'UPDATE usuario SET nombre=?, correo_electronico=?, telefono=?, tipo_usuario=?, status=? WHERE id_usuario = ?';
                        const parametros2 = [data.nombre, data.correo_electronico, data.telefono, 3, data.status, idMod];

                        conn.query(consulta2, parametros2, (err, rows) => {
                            if (err) {
                                console.error('Error al insertar:', err);
                                req.session.errorM = 'Error: Al ingresar los datos!';
                                manDocente(req, res);
                            }
                            renderManDocente(req, res); 
                            return;
                        });
                    });

                }else{
                    let letras = /.{8,}/; // Al menos 8 caracteres
                    let especialCaracter = /[^A-Za-z0-9]/; // Al menos 1 carácter especial
                    let numero = /[0-9]/; // Al menos 1 número
                    let mayuscula = /[A-Z]/; // Al menos 1 letra mayúscula
                    let errorMensaje = "";

                    if (!letras.test(data.password)) {
                        errorMensaje += ` 8 caracteres.<br>`;
                    }
                    if (!especialCaracter.test(data.password)) {
                        errorMensaje += `1 carácter especial.<br>`;
                    }
                    if (!numero.test(data.password)) {
                        errorMensaje += ` 1 número.<br>`;
                    }
                    if (!mayuscula.test(data.password)) {
                        errorMensaje += ` 1 letra mayúscula.<br>`;
                    }
                    if (errorMensaje !== "") {
                        const errM = `La contraseña debe tener al menos.<br>` + errorMensaje;
                            req.session.errorM = errM;
                            req.session.dataCampos = data;  
                        if (idMod){
                            ediDocente(req, res);
                        }else{
                            manDocente(req, res);
                        }    
                        return;
                    }else{
                        bcrypt.hash(data.password, 12).then(hash => {
                            data.password = hash;
                            req.getConnection((err, conn) => {
                                let consulta2;
                                let parametros2;

                                if (idMod){
                                    // consulta para actualizar datos del administrador con la misma contraseña
                                    consulta2 = 'UPDATE usuario SET nombre=?, correo_electronico=?, password=?, telefono=?, tipo_usuario=?, status=? WHERE id_usuario = ?';
                                    parametros2 = [data.nombre, data.correo_electronico, data.password, data.telefono, 3,  data.status, idMod];
                                }else{
                                    // consulta para insertar datos nuevos del administrador 
                                    consulta2 = 'INSERT INTO usuario (nombre, correo_electronico, password, telefono, tipo_usuario, status) VALUES (?, ?, ?, ?, ?, ?)';
                                    parametros2 = [data.nombre, data.correo_electronico, data.password, data.telefono, 3, data.status];
                                }
                                    conn.query(consulta2, parametros2, (err, rows) => {
                                        if (err) {
                                            console.error('Error al insertar:', err);
                                            req.session.errorM = 'Error: Al ingresar los datos!';
                                            manDocente(req, res);
                                        }
                                        renderManDocente(req, res); 
                                        return;
                                    });
                            });
                        }); // termina hash
                    }
                } // termina la condicion si la contraseña se mantiene
            };
        });
    });
}

//para llamar a las funciones
module.exports = {
    manDocente,
    ediDocente,
    manipulaDocente,
    renderManDocente,
};
