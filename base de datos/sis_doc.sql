-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2025 a las 22:40:04
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sis_doc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academia`
--

CREATE TABLE `academia` (
  `id_academia` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nombre_corto` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centro_trabajo`
--

CREATE TABLE `centro_trabajo` (
  `id_cct` int(11) NOT NULL,
  `CCT` varchar(10) NOT NULL,
  `Nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `centro_trabajo`
--

INSERT INTO `centro_trabajo` (`id_cct`, `CCT`, `Nombre`) VALUES
(1, '01DCT0004C', 'CETIS 155');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id_docente` int(11) NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido_pat` varchar(100) NOT NULL,
  `Apellido_mat` varchar(100) DEFAULT NULL,
  `Perfil` text DEFAULT NULL,
  `correo_e` varchar(100) DEFAULT NULL,
  `Telefono` varchar(100) DEFAULT NULL,
  `id_turno` int(11) NOT NULL,
  `id_cct` int(11) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id_docente`, `RFC`, `Nombre`, `Apellido_pat`, `Apellido_mat`, `Perfil`, `correo_e`, `Telefono`, `id_turno`, `id_cct`, `id_status`) VALUES
(1, 'AAMP600211E43', 'PEDRO', 'ALCALA', 'MARTINEZ', 'M', 'alcalapedro@hotmail.com', '4491514748', 1, 1, 1),
(2, 'AEDL710625ST0', 'LUZ AURORA', 'ALENCASTRO', 'DURON', 'I', 'e_dusa@hotmail.com', '4491099168', 3, 1, 1),
(3, 'BAMC7409035Q3', 'CARMEN ROSALBA', 'BARBA', 'MACIAS', 'I', 'rosalba.barba@hotmail.com', '4491141784', 3, 1, 1),
(4, 'COMA5812092Z5', 'ARTURO', 'CORONA', 'MONTES', 'M', 'anlope85@hotmail.com', '4492321141', 1, 1, 1),
(5, 'DIVG880109DG9', 'GERARDO JESUS', 'DIAZ', 'VELA', 'V', 'gerardo.diaz.vela@gmail.com', '4492094476', 2, 1, 1),
(6, 'DILM771216LS9', 'MARCELA ESTHELA', 'DIAZ', 'LIMON', 'M', 'markiela3012@hotmail.com', '', 1, 1, 1),
(7, 'DOLP721020I52', 'PEDRO', 'DOMINGUEZ', 'LOPEZ', 'M', 'yopedro72@live.com.mx', '', 1, 1, 1),
(8, 'DUME680417TW0', 'ELBA ELIZABETH', 'DURON', 'MACIAS', 'I', 'eliz_duron@yahoo.com.mx', '', 3, 1, 1),
(9, 'LOOF691212ECA', 'FABIOLA GUADALUPE', 'LOPEZ', 'OCHOA', 'M', 'fabilupis@yahoo.com.mx', '4491094794', 1, 1, 1),
(10, 'BACM8210133S9', 'MARTHA ELIZABETH', 'BRAMBILA', 'CASTILLO', 'M', 'vicky23222008@hotmail.com', '', 1, 1, 1),
(11, 'MEGG690303RM4', 'MA. GUADALUPE', 'MENDOZA', 'GONZALEZ', 'V', 'mendozgl@gmail.com', '', 2, 1, 1),
(12, 'MOAL6303017G8', 'MA. LETICIA', 'MORALES', 'ACOSTA', 'I', 'mariel_shell@hotmail.com', '4491787136', 3, 1, 1),
(13, 'MOEU640726VB1', 'URIEL', 'MORALES', 'ELIAS', 'M', 'urimoraeli@hotmail.com', '4491378997', 1, 1, 1),
(15, 'JAPA8009252M9', 'AMIRA', 'J UREGUI', 'P REZ', 'V', 'eriosparra@yahoo.com.mx', '', 2, 1, 1),
(16, 'ROSP820128EC7', 'PAMELA VIRIDIANA', 'ROBLEDO', 'SAMANO', 'M', 'pamikitty@hotmail.com', '', 1, 1, 1),
(17, 'CAMJ840102S86', 'JANETTE DEL ROSARIO', 'CAMPOS', 'M RQUEZ', 'M', 'cecilia_1309@hotmail.com', '4492310718', 1, 1, 1),
(18, 'TITA670625G21', 'ANABEL', 'TRINIDAD', 'TRINIDAD', 'M', 'aniytt@yahoo.com.mx', '4493000488', 1, 1, 1),
(19, 'CAOM630224RI5', 'MARICELA', 'CAMACHO', 'OVALLE', 'I', 'urzana660@yahoo.com.mx', '', 3, 1, 1),
(20, 'LUGJ921118NZA', 'JUAN MANUEL', 'LUEVANO', 'GOMEZ', 'I', 'vhas58@hotmail.com', '', 3, 1, 1),
(21, 'CACJ670802F64', 'J. ANGEL', 'CARRANZA', 'CARLIN', 'M', 'carranzacarlinl.angel@yahoo.com', '', 1, 1, 1),
(23, 'COAJ810226E94', 'JOSEFINA', 'CONTRERAS', 'ARRIAGA', 'M', 'yulery@hotmail.com', '4491827174', 1, 1, 1),
(24, 'CORM6410047G9', 'MARTIN', 'CONTRERAS', 'ROMO', 'V', 'conromo64@hotmail.com', '4491062147', 2, 1, 1),
(25, 'TOSJ641125R23', 'JAIME', 'DE LA TORRE', 'SIFUENTES', 'I', 'jaimerutilio@msn.com', '4491981786', 3, 1, 1),
(26, '', ' ALBERTO', 'QUEZADA', ' VAZQUEZ', 'I', 'maester56@hotmail.com', '4491027162', 3, 1, 1),
(27, 'HEMA631216DV8', 'MARIA ALICIA', 'HERNANDEZ', 'MORAN', 'V', 'aliferic@yahoo.com.mx', '', 2, 1, 1),
(28, 'MOOA840616DAA', 'ANA LAURA', 'MONTES', 'ORTEGA', 'M', 'anylu38@hotmail.com', '', 1, 1, 1),
(29, '', 'ARY ISRAEL', 'HERNANDEZ', 'LAZCANO', 'I', 'marcolino.nava@gmail.com', '4491556989', 3, 1, 1),
(30, '', 'SERGIO LUIS', 'PALACIO', 'IBARROLA', 'V', '', '', 2, 1, 1),
(32, 'ROTB620901N91', 'BERNARDO', 'RODRIGUEZ', 'TAPIA', 'V', 'joseph-pozos@hotmail.com', '4491735905', 2, 1, 1),
(33, 'ROGH7601068V4', 'HILDA LUCIA', 'RODRIGUEZ', 'GOMEZ', 'V', 'hildardz76@hotmail.com', '', 2, 1, 1),
(34, 'ROES620528EKA', 'SERGIO ENRIQUE', 'ROMERO', 'ESCOBOSA', 'I', 'serenrique62@gmail.com', '4491107054', 3, 1, 1),
(35, 'QUGK801111UA3', 'KARLA ALEJANDRA', 'QUEZADA', 'GALVAN', 'V', '', '', 2, 1, 1),
(36, 'VARL7107197Z8', 'LAURA', 'VARGAS', 'RIVERA', 'V', '', '4492128801', 2, 1, 1),
(37, 'LODG7107077T2', 'GUILLERMO', 'LOPEZ', 'DIEGO', 'M', 'guillermo_l_d@hotmail.com', '', 1, 1, 1),
(38, '', 'JANELY ANAYENZI', 'GARCIA', 'QUIROZ', 'I', '', '', 3, 1, 1),
(39, 'AASP9308261U8', 'PRISCILA GABRIELA', 'ANDRADE', 'SANCHEZ', 'V', '', '', 2, 1, 1),
(40, '', 'ERNESTO ROMEO', 'GARIBAY', 'MARTINEZ', 'V', '', '', 2, 1, 1),
(41, '', 'VICTOR HUGO', 'MARIN', 'RAMIREZ', 'I', '', '', 3, 1, 1),
(42, '', 'FABIOLA GUADALUPE', 'ARELLANO', 'RANGEL', 'V', '', '', 2, 1, 1),
(43, '', 'MARIA GUADALUPE', 'MANCILLA', 'ROMO', 'V', '', '', 2, 1, 1),
(44, '', 'CARLOS ALBERTO', 'ACEVEDO', 'SANCHEZ', 'M', '', '', 1, 1, 1),
(45, '', 'VERONICA DEL ROCIO', 'FLORES', 'REYES', 'M', '', '', 1, 1, 1),
(46, '', 'LETICIA ANGELICA', 'LEDESMA', 'ESPINOZA', 'M', '', '', 1, 1, 1),
(47, '', 'ERIKA LILIANA', 'PADILLA', 'CONTRERAS', 'V', '', '', 2, 1, 1),
(48, '', 'MANUEL', 'TRINIDAD', 'RODRIGUEZ', 'V', '', '', 2, 1, 1),
(49, '', 'MAYRA', 'GUERRERO', 'ARROYO', '', '', '', 1, 1, 1),
(53, '', 'TERESA', 'MORALES', 'ESPARZA', 'M', '', '', 1, 1, 1),
(54, '', 'JOSE FERNANDO', 'MONTANTES', 'CASTA EDA', 'V', '', '', 2, 1, 1),
(55, 'MOSR8707093VA', 'ROSA ARCELIA', 'MONTOYA', 'SANTOYO', 'V', '', '', 2, 1, 1),
(56, '', 'OSCAR EDUARDO', 'ORNELAS', 'URZ A', 'M', '', '', 1, 1, 1),
(59, '', 'DAVID', 'ACOSTA', 'MARQUEZ', 'V', '', '', 2, 1, 1),
(64, '', 'LUIS MANUEL', 'RAMOS', 'SANDOVAL', '', '', '', 1, 1, 1),
(70, '', 'JANELY ANAYENZI', 'GARCIA', 'QUIROZ', '', '', '', 1, 1, 1),
(71, '', 'URIEL', 'MORALES', 'ELIAS', 'V', '', '', 2, 1, 1),
(72, '', 'KARLA CECILIA', 'ACEVEDO', 'MORENO', 'V', '', '', 2, 1, 1),
(75, '', 'FERNANDO MISAEL', 'PEREZ', 'HERNANDEZ', 'V', '', '', 2, 1, 1),
(89, '', 'FATIMA ENEDINA', 'SABAD', 'ROSALES', 'I', '', '', 3, 1, 1),
(90, '', ' OMAR GUADALUPE', 'CLAUDIO', 'GOMEZ', 'I', '', '', 3, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nombre_corto` varchar(20) NOT NULL,
  `semestre` int(11) NOT NULL,
  `especialidad` varchar(20) NOT NULL,
  `horas` int(11) NOT NULL,
  `tipo_semestre` varchar(1) DEFAULT NULL,
  `id_academia` int(11) DEFAULT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `nombre`, `nombre_corto`, `semestre`, `especialidad`, `horas`, `tipo_semestre`, `id_academia`, `id_status`) VALUES
(1, 'GEOMETRIA Y TRIGONOMETRIA', 'GEO Y TRIGO', 2, 'B', 4, 'P', NULL, 0),
(2, 'INGLES II', 'INGLES II', 2, 'B', 3, 'P', NULL, 0),
(3, 'CONSERVACION DE LA ENERGIA Y SUS INTERACCIONES CON LA MATERIA', 'CONS ENE IM', 2, 'B', 4, 'P', NULL, 0),
(4, 'LECTURA, EXPRESION ORAL Y ESCRITA II', 'LEOYE II', 2, 'B', 4, 'P', NULL, 0),
(5, 'DESARROLLA SOFTWARE UTILIZANDO PROGRAMACION ESTRUCTURADA', 'PROG. ESTRUC.', 2, 'P', 10, 'P', NULL, 0),
(6, 'DISE¥A Y ADMINISTRA BDD SIMPLES', 'D. BASE DATOS', 2, 'P', 7, 'P', NULL, 0),
(7, 'ENSAMBLA E INSTALA CONTROLADORES Y DISPOSITIVOS PERIFERICOS', 'ENS. INST. CONT', 2, 'S', 10, 'P', NULL, 0),
(8, 'INSTALA Y CONFIGURA SOFTWARE', 'INS. CONF. SOFTW', 2, 'S', 7, 'P', NULL, 0),
(9, 'INSTALA Y CONFIGURA SOFTWARE DE ACUERDO A LAS ESPECIFICACIONES Y REQUERIMIENTOS DEL USUARIO', 'INS. SOFT.', 2, 'S', 5, 'P', NULL, 0),
(10, 'DISTINGUE LOS DIFERENTES TIPOS DE EMPRESAS, DOCUMENTOS, ADMINISTRACIONN Y RECURSOS', 'DIS.TIP.EMP.', 2, 'H', 10, 'P', NULL, 0),
(11, 'ELABORA ESTRARTEGIAS PARA REALIZAR ACTIVIDADES EN SU AREA', 'ELAB. ESTRATEGIAS', 2, 'H', 7, 'P', NULL, 0),
(12, 'MANTIENE EL SISTEMA ELECTRICO DEL AUTOMOVIL CON BASE EN EL MANUAL DEL FABRICANTE', 'M.S. ELECT.', 2, 'M', 6, 'P', NULL, 0),
(13, 'MANTIENE EL SISTEMA ELECTRONICO DEL AUTOMOVIL', 'M. SIS. EL. AUT', 2, 'M', 11, 'P', NULL, 0),
(14, 'CALCULO DIFERENCIAL', 'CALCULO DIF', 4, 'B', 4, 'P', NULL, 0),
(15, 'INGLES IV', 'INGLES IV', 4, 'B', 3, 'P', NULL, 0),
(16, 'FISICA I', 'FISICA', 4, 'B', 4, 'P', NULL, 0),
(17, 'ECOLOGIA', 'ECOLOGIA', 4, 'B', 4, 'P', NULL, 0),
(18, 'DESARROLLA APLICACIONES M?VILES PARA ANDROID', 'DES. AP. ANDROID', 6, 'P', 6, 'P', NULL, 0),
(19, 'DESARROLLA APLICACIONES MOVILES PARA IOS', 'DES. AP. IOS', 6, 'P', 6, 'P', NULL, 0),
(20, 'BRINDA SOPORTE TECNICO DE MANERA PRESENCIAL', 'SOP.TEC.PRE.', 4, 'S', 6, 'P', NULL, 0),
(21, 'BRINDA SOPORTE TECNICO A DISTANCIA', 'SOP.TEC.DIS.', 4, 'S', 11, 'P', NULL, 0),
(22, 'ASISTE EN LAS ACTIVIDADES DE CAPACITACION PARA EL DESARROLLO DEL CAPITAL HUMANO', 'ASIS.CAP. C.H', 4, 'H', 7, 'P', NULL, 0),
(23, 'EVALUA EL DESEMPE¥O DE LA ORGANIZACION UTILIZANDO HERRAMIENTAS DE CALIDAD', 'EV.DES.ORG.H.C', 4, 'H', 10, 'P', NULL, 0),
(24, 'CORRIGE FALLAS DE LOS SISTEMAS DE INYECCION ELECTRONICA DE LOS MOTORES DE GASOLINA Y DIESEL', 'CORR.INY.ELECT.', 4, 'M', 7, 'P', NULL, 0),
(25, 'MANTIENE LAS EMISIONES CONTAMINANTES DENTRO DE LAS ESPECIFICACIONES DEL FABRICANTE', 'MAN.EM.CON.E.F', 4, 'M', 4, 'P', NULL, 0),
(26, 'DIAGNOSTICA EL FUNCIONAMIENTO DE LOS SISTEMAS DE ENCENDIDO ELECTRONICO Y COMPUTARIZADO DEL MOTOR', 'DIAG.F.S.E.CONT.', 4, 'M', 6, 'P', NULL, 0),
(27, 'GESTIONA LOS PROCESOS DE CAPACITACI?N PARA EL DESARROLLO DEL TALENTO HUMANO', 'GES P CAP DTH', 4, 'H', 10, 'P', NULL, 0),
(28, 'PROMUEVE CONDICIONES DE TRABAJO SALUDABLES EN LA ORGANIZACI?N', 'PCT SALUD ORG', 4, 'H', 7, 'P', NULL, 0),
(29, 'PROBABILIDAD Y ESTADISTICA', 'PROB. Y EST.', 6, 'B', 5, 'P', NULL, 0),
(30, 'TEMAS DE FILOSOFIA', 'T. DE FILOSOFIA', 6, 'B', 5, 'P', NULL, 0),
(31, 'ADMINISTRA Y CONFIGURA PLATAFORMAS DE E-LEARNING', 'A Y C P.ELEARNING', 6, 'P', 6, 'P', NULL, 0),
(32, 'TEMAS SELECTOS DE MATEM?TICAS I', 'T.SEL MATE I', 4, 'B', 4, 'P', NULL, 0),
(33, 'INSTALA UNA RED LAN', 'INST. RED LAN', 6, 'S', 6, 'P', NULL, 0),
(34, 'OPERA UNA RED LAN', 'OPERA RED LAN', 6, 'S', 6, 'P', NULL, 0),
(35, 'DETERMINA LA NOMINA DEL PERSONAL DE LA ORGANIZACION TOMANDO EN CUENTA LA NORMATIVIDAD LABORAL', 'DET.NOM.NORM.', 6, 'H', 8, 'P', NULL, 0),
(36, 'DETERMINA REMUNERACIONES DEL PERSONAL EN SITUACIONES EXTRAORDINARIAS', 'DET.REM.P.S.EXT.', 6, 'H', 4, 'P', NULL, 0),
(37, 'MANTIENE LOS SISTEMAS DE SUSPENSION Y DIRECCION DEL AUTOMOVIL', 'MAN.SIS.SUSP Y DIR', 6, 'M', 5, 'P', NULL, 0),
(38, 'MANTIENE LOS SISTEMAS DE FRENOS EN CONDICIONES DE OPERACION', 'MAN. SIST. FRENOS', 6, 'M', 7, 'P', NULL, 0),
(39, 'IMPLEMENTA BASE DE DATOS NO RELACIONALES EN UN SISTEMA DE INFORMACI?N', 'IMPLE BD NO REL SI', 4, 'P', 8, 'P', NULL, 0),
(40, 'REACCIONES QU?MICAS: CONSERVACI?N DE LA MATERIA EN LA FORMACI?N DE NUEVAS SUSTANCIAS', 'REACC QUIMICAS', 4, 'B', 4, 'P', NULL, 0),
(41, 'TEMAS DE ADMINISTRACION', 'ADMINISTRACION', 6, 'O', 5, 'P', NULL, 0),
(42, 'INTRODUCCION A LA ECONOMIA', 'ECONOMIA', 6, 'O', 5, 'P', NULL, 0),
(43, 'TEMAS DE FISICA', 'TEM. FISICA', 6, 'O', 5, 'P', NULL, 0),
(44, 'IMPLEMENTA BASE DE DATOS RELACIONALES EN UN SISTEMA DE INFORMACI?N', 'IMPLE BD REL SI', 4, 'P', 9, 'P', NULL, 0),
(45, 'MATEMATICAS APLICADAS', 'MAT. APL.', 6, 'O', 5, 'P', NULL, 0),
(46, 'BIOLOGIA CONTEMPORANEA', 'BIOLOGIA C.', 6, 'O', 5, 'P', NULL, 0),
(47, 'CIENCIAS SOCIALES II', 'CIEN SOC  II', 2, 'B', 2, 'P', NULL, 0),
(48, 'CIENCIAS SOCIALES III', 'CIEN SOC  III', 4, 'B', 2, 'P', NULL, 0),
(49, 'CONCIENCIA HIST?RICA I. PERSPECTIVAS DEL MXICO ANTIGUO EN LOS CONTEXTOS GLOBALES', 'CONC HIST I', 4, 'B', 3, 'P', NULL, 0),
(50, 'CULTURA DIGITAL II', 'CULT DIGITAL II', 2, 'B', 2, 'P', NULL, 0),
(51, 'DISE¥A SOFTWARE DE SISTEMAS INFORM?TICOS', 'DISE¥A SOFT SI', 2, 'P', 5, 'P', NULL, 0),
(52, 'CODIFICA SOFTWARE DE SISTEMAS INFORM?TICOS', 'CODIFICA SOFT SI', 2, 'P', 7, 'P', NULL, 0),
(53, 'IMPLEMENTA SOFTWARE DE SISTEMAS INFORM?TICOS', 'IMPLEMENTA SOFT SI', 2, 'P', 5, 'P', NULL, 0),
(54, 'PENSAMIENTO MATEM?TICO II', 'PENS. MATE. II', 2, 'B', 4, 'P', NULL, 0),
(55, 'MANTIENE EL SISTEMA DE INYECCI?N ELECTR?NICA DE LOS MOTORES DE GASOLINA Y DISEL', 'MSIEMGD', 4, 'M', 7, 'P', NULL, 0),
(56, 'MANTIENE EL SISTEMA DE EMISIONES CONTAMINANTES DEL AUTOM?VIL', 'MSECA', 4, 'M', 4, 'P', NULL, 0),
(57, 'MANTIENE EL SISTEMA DE ENCENDIDO ELECTR?NICO Y COMPUTARIZADO DEL AUTOM?VIL', 'MSEECA', 4, 'M', 6, 'P', NULL, 0),
(58, 'EJECUTA PROCEDIMIENTOS ADMINISTRATIVOS DEL ?REA DE RECURSOS HUMANOS', 'EJECUTA PAARH', 2, 'H', 10, 'P', NULL, 0),
(59, 'GESTIONA DOCUMENTACI?N DEL ?REA DE RECURSOS HUMANOS', 'GEST DOC ARH', 2, 'H', 7, 'P', NULL, 0),
(60, 'LENGUA Y COMUNICACI?N', 'LENG Y COMUN II', 2, 'B', 3, 'P', NULL, 0),
(61, 'TUTOR?A', 'TUTOR?A', 0, 'T', 1, 'P', NULL, 0),
(62, 'ESCOLTA', 'ESCOLTA', 0, '', 1, 'P', NULL, 0),
(63, 'ACT. INTEGRAL BANDA DE GUERRA', 'BANDA DE GUERRA', 0, '', 1, 'P', NULL, 0),
(64, 'ACT. INTEGRAL GUITARRA', 'GUITARRA', 0, '', 1, 'P', NULL, 0),
(65, 'ACT. INTEGRAL DIBUJO, PINTURA O COMICS (EAC)', 'EAC', 0, '', 1, 'P', NULL, 0),
(66, 'ACT. INTEGRAL MEDIOAMBIENTAL', 'MEDIOAMBIENTAL', 0, '', 1, 'P', NULL, 0),
(67, 'DEPORTES', 'DEPORTES', 0, 'T', 1, 'P', NULL, 0),
(68, 'ACT. PORRA T.M.', 'PORRA', 0, 'H', 1, 'P', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id_status` int(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id_status`, `descripcion`) VALUES
(1, 'Activo'),
(2, 'Inactivo'),
(3, 'Suspendido'),
(4, 'Pendiente'),
(5, 'Baja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(20) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `descripcion`) VALUES
(1, 'Super Administrador'),
(2, 'Administrador'),
(3, 'Captura'),
(4, 'Docente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id_turno` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`id_turno`, `Descripcion`) VALUES
(1, 'Matutino'),
(2, 'Vespertino'),
(3, 'Mixto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tipo_usuario` int(20) NOT NULL,
  `status` int(20) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `correo_electronico`, `password`, `tipo_usuario`, `status`, `telefono`) VALUES
(1, 'Super Administrador', 'superAdm@gmail.com', '$2b$12$aXt.urKj5OgRLGnATTloj.siVIgmasf7uCVdWndWHyK/raktqif3a', 1, 4, '449 429 6282'),
(2, 'Martin', 'martin@gmail.com', '$2b$12$1SGgp4REQ8oF178B55IgfeEzFvx4gD2L1wAH6lQTW5dANqBN8X8SK', 2, 4, '449 223 9955'),
(3, 'Bernado', 'bernardo@gmail.com', '$2b$12$cZp3DQIUwFj8rKttO3lxC.CdFzpCvQeSE7TsMgup6iYb2osX/GMZ.', 3, 4, '449 107 7654'),
(4, 'luis', 'luis@gmail.com', '$2b$12$x12.RpNjleTnslNzHs7S3eKPGbzjuVxnyj72rWrrXR12T5zTEzCIK', 4, 4, '449 568 6105'),
(5, 'Regina', 'ReginaOdette@gmail.com', '$2b$12$AYcZPArJZHlyAXpvOltE8.0kdEEz4jZwYSK9d/us4EnWHDZWyxMtu', 4, 4, '351 304 6049'),
(6, 'Mar', 'marlne@gmail.com', '$2b$12$7Fff2WKw7GEtESTEPVkvh.kmIgyCynpqYFoz7ciVWhhW0tUXuWcFC', 4, 4, '449 539 6287'),
(7, 'Ian', 'ianYeshua@gmail.com', '$2b$12$mNtF3BfNJpMah78Dyw93i.CQYrF/tD6h7jscGgBuxtb/R4mImlqpy', 4, 4, '444 444 4444');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_docente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_docente` (
`id_docente` int(11)
,`RFC` varchar(13)
,`Nombre` varchar(100)
,`Apellido_pat` varchar(100)
,`Apellido_mat` varchar(100)
,`Perfil` text
,`correo_e` varchar(100)
,`Telefono` varchar(100)
,`id_turno` int(11)
,`id_cct` int(11)
,`turno` varchar(100)
,`centro_trabajo` varchar(100)
,`id_status` int(11)
,`status` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_docente`
--
DROP TABLE IF EXISTS `vista_docente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_docente`  AS SELECT `do`.`id_docente` AS `id_docente`, `do`.`RFC` AS `RFC`, `do`.`Nombre` AS `Nombre`, `do`.`Apellido_pat` AS `Apellido_pat`, `do`.`Apellido_mat` AS `Apellido_mat`, `do`.`Perfil` AS `Perfil`, `do`.`correo_e` AS `correo_e`, `do`.`Telefono` AS `Telefono`, `do`.`id_turno` AS `id_turno`, `do`.`id_cct` AS `id_cct`, `tu`.`Descripcion` AS `turno`, `ct`.`Nombre` AS `centro_trabajo`, `do`.`id_status` AS `id_status`, `st`.`descripcion` AS `status` FROM (((`docente` `do` left join `turno` `tu` on(`do`.`id_turno` = `tu`.`id_turno`)) left join `centro_trabajo` `ct` on(`do`.`id_cct` = `ct`.`id_cct`)) left join `status` `st` on(`do`.`id_status` = `st`.`id_status`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `academia`
--
ALTER TABLE `academia`
  ADD PRIMARY KEY (`id_academia`);

--
-- Indices de la tabla `centro_trabajo`
--
ALTER TABLE `centro_trabajo`
  ADD PRIMARY KEY (`id_cct`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_docente`),
  ADD KEY `fk_docente_turnp` (`id_turno`),
  ADD KEY `fk_docente_cct` (`id_cct`),
  ADD KEY `fk_docente_status` (`id_status`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id_turno`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `FK_usuarios_tipo` (`tipo_usuario`),
  ADD KEY `FK_usuarios_status` (`status`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `academia`
--
ALTER TABLE `academia`
  MODIFY `id_academia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `centro_trabajo`
--
ALTER TABLE `centro_trabajo`
  MODIFY `id_cct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo_usuario` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `fk_docente_cct` FOREIGN KEY (`id_cct`) REFERENCES `centro_trabajo` (`id_cct`),
  ADD CONSTRAINT `fk_docente_status` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`),
  ADD CONSTRAINT `fk_docente_turnp` FOREIGN KEY (`id_turno`) REFERENCES `turno` (`id_turno`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_usuarios_status` FOREIGN KEY (`status`) REFERENCES `status` (`id_status`),
  ADD CONSTRAINT `FK_usuarios_tipo` FOREIGN KEY (`tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
