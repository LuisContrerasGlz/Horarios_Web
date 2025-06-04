-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2025 a las 00:36:20
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
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `usuario` varchar(20) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Calificacion` float NOT NULL,
  `guia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`usuario`, `Apellido`, `Nombre`, `Calificacion`, `guia`) VALUES
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 10, 1),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 10, 1),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 10, 1),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 10, 1),
('C155G230089', 'Garcia Becerra', 'Eduardo', 0, 1),
('C155G230089', 'Garcia Becerra', 'Eduardo', 10, 1),
('C155G230095', 'Hernandez Lara', 'Cristian Aaron', 0, 1),
('C155G230104', 'Montes Rivera', 'Andrea Ximena', 0, 1),
('C155G230106', 'MORIN CARRASCO', 'FATIMA ALEJANDRA', 0, 1),
('C155G230057', 'Arguelles Franco', 'Fatima', 8.79518, 1),
('C155G230057', 'Arguelles Franco', 'Fatima', 7.3494, 1),
('C155G230060', 'Casillas Castruita', 'Angel Eduardo', 6.50602, 1),
('C155G230060', 'Casillas Castruita', 'Angel Eduardo', 8.43373, 1),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.39759, 1),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.75904, 1),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 10, 1),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.75904, 1),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.63855, 1),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.75904, 1),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.63855, 1),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 10, 1),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 10, 1),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 10, 1),
('C155G230070', 'Chavez Luevano', 'Yared Guadalupe', 8.43373, 1),
('C155G230073', 'CHAVEZ SANCHEZ', 'JUAN JOSE', 5.3012, 1),
('C155G230073', 'CHAVEZ SANCHEZ', 'JUAN JOSE', 9.63855, 1),
('C155G230073', 'CHAVEZ SANCHEZ', 'JUAN JOSE', 9.15663, 1),
('C155G230588', 'cordova bautista', 'nahomi', 7.95181, 1),
('C155G230087', 'Elias Vivero', 'Erick Santiago', 2.6506, 1),
('C155G230088', 'Flores Lugo', 'Diego Niam', 6.38554, 1),
('C155G230089', 'Garcia Becerra', 'Eduardo', 0, 1),
('C155G230089', 'Garcia Becerra', 'Eduardo', 10, 1),
('C155G230090', 'gonzalez garcia', 'karol cristana', 6.14458, 1),
('C155G230090', 'gonzalez garcia', 'karol cristana', 9.27711, 1),
('C155G230585', 'GONZALEZ MARTINEZ', 'DALILA AIDEE', 1.08434, 1),
('C155G230585', 'GONZALEZ MARTINEZ', 'DALILA AIDEE', 7.71084, 1),
('C155G230585', 'GONZALEZ MARTINEZ', 'DALILA AIDEE', 2.16867, 1),
('C155G230091', 'gonzalez quiñones', 'jorge eloy', 2.40964, 1),
('C155G230093', 'Guerrero Basurto', 'Karen Nicole', 6.38554, 1),
('C155G230093', 'Guerrero Basurto', 'Karen Nicole', 1.20482, 1),
('C155G230094', 'GUZMAN MARTINEZ', 'ALEXIS', 5.90361, 1),
('C155G230095', 'Hernandez Lara', 'Cristian Aaron', 0, 1),
('C155G230096', 'Lariz Altamira', 'Aarón Alexander', 8.6747, 1),
('C155G230096', 'Lariz Altamira', 'Aarón Alexander', 9.51807, 1),
('C155G230098', 'madrid ponce', 'emiliano', 3.85542, 1),
('C155G230100', 'MARTINEZ WONG', 'WENDY NAOMI', 9.15663, 1),
('C155G230100', 'MARTINEZ WONG', 'WENDY NAOMI', 9.39759, 1),
('C155G230100', 'MARTINEZ WONG', 'WENDY NAOMI', 9.39759, 1),
('C155G230103', 'melendez gonzalez', 'leonardo ari', 0.60241, 1),
('C155G230104', 'Montes Rivera', 'Andrea Ximena', 6.26506, 1),
('C155G230104', 'Montes Rivera', 'Andrea Ximena', 0, 1),
('C155G230116', 'Morales Gutiérrez', 'Yunnuen', 0.120482, 1),
('C155G230106', 'MORIN CARRASCO', 'FATIMA ALEJANDRA', 8.19277, 1),
('C155G230106', 'MORIN CARRASCO', 'FATIMA ALEJANDRA', 9.27711, 1),
('C155G230106', 'MORIN CARRASCO', 'FATIMA ALEJANDRA', 5.90361, 1),
('C155G230106', 'MORIN CARRASCO', 'FATIMA ALEJANDRA', 0, 1),
('C155G230108', 'Pedroza López', 'Rubén Emmanuel', 7.22892, 1),
('C155G230108', 'Pedroza López', 'Rubén Emmanuel', 8.79518, 1),
('C155G230108', 'Pedroza López', 'Rubén Emmanuel', 7.95181, 1),
('C155G230108', 'Pedroza López', 'Rubén Emmanuel', 9.27711, 1),
('C155G230110', 'piña coronel', 'Jose Emiliano', 4.09639, 1),
('C155G230110', 'piña coronel', 'Jose Emiliano', 0, 1),
('C155G230112', 'PORTILLA RANGEL', 'DIEGO LEONARDO', 5.3012, 1),
('C155G230112', 'PORTILLA RANGEL', 'DIEGO LEONARDO', 8.79518, 1),
('C155G231028', 'Quiroz Nava', 'Kenia Hazarmavet', 5.54217, 1),
('C155G231028', 'Quiroz Nava', 'Kenia Hazarmavet', 9.15663, 1),
('C155G231028', 'Quiroz Nava', 'Kenia Hazarmavet', 1.20482, 1),
('C155G230114', 'REVELES VILLALOBOS', 'KAROL JSOSELIN', 7.83133, 1),
('C155G230114', 'REVELES VILLALOBOS', 'KAROL JSOSELIN', 8.55422, 1),
('C155G230114', 'REVELES VILLALOBOS', 'KAROL JSOSELIN', 10, 1),
('C155G230117', 'Reyes Avila', 'Diana', 9.27711, 1),
('C155G230580', 'Reynaga Avila', 'Mariana Judith', 6.38554, 1),
('C155G230580', 'Reynaga Avila', 'Mariana Judith', 9.39759, 1),
('C155G230120', 'Rivera Zamora', 'Andree Leonardo', 9.75904, 1),
('C155G230122', 'Rocha Cortes', 'Jose Eduardo', 9.51807, 1),
('C155G230122', 'Rocha Cortes', 'Jose Eduardo', 9.39759, 1),
('C155G230122', 'Rocha Cortes', 'Jose Eduardo', 9.75904, 1),
('C155G230122', 'Rocha Cortes', 'Jose Eduardo', 1.20482, 1),
('C155G220200', 'Ruiz Clemente', 'Alexander Ivanov', 6.98795, 1),
('C155G220200', 'Ruiz Clemente', 'Alexander Ivanov', 7.83133, 1),
('C155G230126', 'Sanchez Pedroza', 'Jose Miguel', 8.55422, 1),
('C155G230126', 'Sanchez Pedroza', 'Jose Miguel', 8.6747, 1),
('C155G230455', 'serrano ventura', 'America jazbet', 8.6747, 1),
('C155G230455', 'serrano ventura', 'America jazbet', 8.55422, 1),
('C155G230455', 'serrano ventura', 'America jazbet', 8.79518, 1),
('C155G230455', 'serrano ventura', 'America jazbet', 9.15663, 1),
('C155G230455', 'serrano ventura', 'America jazbet', 9.39759, 1),
('C155G230455', 'serrano ventura', 'America jazbet', 4.21687, 1),
('C155G230130', 'Soto Loera', 'Gael Axel', 0, 1),
('C155G230130', 'Soto Loera', 'Gael Axel', 0, 1),
('C155G230133', 'Tovar Velasco', 'Karol Gabriel', 2.40964, 1),
('C155G230134', 'Vazquez Ricardez', 'Alan Joseph', 8.6747, 1),
('C155G230134', 'Vazquez Ricardez', 'Alan Joseph', 8.31325, 1),
('C155G230134', 'Vazquez Ricardez', 'Alan Joseph', 7.71084, 1),
('C155G230135', 'Vela Ibarra', 'Itzel Montserrath', 6.62651, 1),
('C155G230136', 'veloz castañeda', 'Ana Elizabeth', 7.46988, 1),
('C155G230137', 'Viramontes Alfaro', 'Daniel', 8.07229, 1),
('C155G230137', 'Viramontes Alfaro', 'Daniel', 8.79518, 1),
('C155G230137', 'Viramontes Alfaro', 'Daniel', 8.31325, 1),
('C155G230137', 'Viramontes Alfaro', 'Daniel', 7.71084, 1),
('C155G230137', 'Viramontes Alfaro', 'Daniel', 8.91566, 1),
('C155G230137', 'Viramontes Alfaro', 'Daniel', 8.91566, 1),
('C155G230137', 'Viramontes Alfaro', 'Daniel', 10, 1),
('C155G230138', 'Yanes Salazar', 'Eduardo', 2.04819, 1),
('C155G230138', 'Yanes Salazar', 'Eduardo', 7.3494, 1),
('C155G230138', 'Yanes Salazar', 'Eduardo', 1.68675, 1),
('C155G230138', 'Yanes Salazar', 'Eduardo', 4.45783, 1),
('C155G230138', 'Yanes Salazar', 'Eduardo', 8.79518, 1),
('C155G230138', 'Yanes Salazar', 'Eduardo', 8.55422, 1),
('C155G230138', 'Yanes Salazar', 'Eduardo', 0.722892, 1),
('C155G230002', 'Acevedo Loera', 'Omar Alexey', 8.34469, 2),
('C155G230057', 'Arguelles Franco', 'Fatima', 8.24732, 2),
('C155G230057', 'Arguelles Franco', 'Fatima', 7.46835, 2),
('C155G230057', 'Arguelles Franco', 'Fatima', 7.6631, 2),
('C155G230057', 'Arguelles Franco', 'Fatima', 7.56573, 2),
('C155G230057', 'Arguelles Franco', 'Fatima', 1.36319, 2),
('C155G230060', 'Casillas Castruita', 'Angel Eduardo', 8.83155, 2),
('C155G230060', 'Casillas Castruita', 'Angel Eduardo', 0, 2),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.12366, 2),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.41577, 2),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 8.92892, 2),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.11392, 2),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.22103, 2),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.22103, 2),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.22103, 2),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 8.92892, 2),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.12366, 2),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.22103, 2),
('C155G230070', 'Chavez Luevano', 'Yared Guadalupe', 3.37877, 2),
('C155G230073', 'CHAVEZ SANCHEZ', 'JUAN JOSE', 8.63681, 2),
('C155G230073', 'CHAVEZ SANCHEZ', 'JUAN JOSE', 0, 2),
('C155G230073', 'CHAVEZ SANCHEZ', 'JUAN JOSE', 9.22103, 2),
('C155G230588', 'cordova bautista', 'nahomi', 9.80526, 2),
('C155G230588', 'cordova bautista', 'nahomi', 0.778968, 2),
('C155G230087', 'Elias Vivero', 'Erick Santiago', 9.51315, 2),
('C155G230088', 'Flores Lugo', 'Diego Niam', 9.41577, 2),
('C155G230088', 'Flores Lugo', 'Diego Niam', 8.92892, 2),
('C155G230088', 'Flores Lugo', 'Diego Niam', 9.02629, 2),
('C155G230089', 'Garcia Becerra', 'Eduardo', 8.72444, 2),
('C155G230090', 'gonzalez garcia', 'karol cristana', 8.14995, 2),
('C155G230090', 'gonzalez garcia', 'karol cristana', 8.83155, 2),
('C155G230090', 'gonzalez garcia', 'karol cristana', 9.02629, 2),
('C155G230090', 'gonzalez garcia', 'karol cristana', 8.73418, 2),
('C155G230090', 'gonzalez garcia', 'karol cristana', 8.7147, 2),
('C155G230585', 'GONZALEZ MARTINEZ', 'DALILA AIDEE', 9.3184, 2),
('C155G230585', 'GONZALEZ MARTINEZ', 'DALILA AIDEE', 0, 2),
('C155G230091', 'gonzalez quiñones', 'jorge eloy', 7.95521, 2),
('C155G230091', 'gonzalez quiñones', 'jorge eloy', 0, 2),
('C155G230091', 'gonzalez quiñones', 'jorge eloy', 7.26388, 2),
('C155G230091', 'gonzalez quiñones', 'jorge eloy', 0, 2),
('C155G230091', 'gonzalez quiñones', 'jorge eloy', 0, 2),
('C155G230093', 'Guerrero Basurto', 'Karen Nicole', 8.51996, 2),
('C155G230094', 'GUZMAN MARTINEZ', 'ALEXIS', 9.22103, 2),
('C155G230096', 'Lariz Altamira', 'Aarón Alexander', 8.83155, 2),
('C155G230098', 'madrid ponce', 'emiliano', 8.73418, 2),
('C155G230098', 'madrid ponce', 'emiliano', 8.92892, 2),
('C155G230098', 'madrid ponce', 'emiliano', 0, 2),
('C155G230100', 'MARTINEZ WONG', 'WENDY NAOMI', 9.12366, 2),
('C155G230100', 'MARTINEZ WONG', 'WENDY NAOMI', 9.22103, 2),
('C155G230102', 'MEDINA TORRES', 'AXEL AROLDO', 9.02629, 2),
('C155G230102', 'MEDINA TORRES', 'AXEL AROLDO', 1.94742, 2),
('C155G230103', 'melendez gonzalez', 'leonardo ari', 8.73418, 2),
('C155G230103', 'melendez gonzalez', 'leonardo ari', 9.12366, 2),
('C155G230104', 'Montes Rivera', 'Andrea Ximena', 7.76047, 2),
('C155G230104', 'Montes Rivera', 'Andrea Ximena', 0, 2),
('C155G230106', 'MORIN CARRASCO', 'FATIMA ALEJANDRA', 8.82181, 2),
('C155G230106', 'MORIN CARRASCO', 'FATIMA ALEJANDRA', 8.72444, 2),
('C155G230106', 'MORIN CARRASCO', 'FATIMA ALEJANDRA', 9.11392, 2),
('C155G230106', 'MORIN CARRASCO', 'FATIMA ALEJANDRA', 9.2113, 2),
('C155G230108', 'Pedroza López', 'Rubén Emmanuel', 8.92892, 2),
('C155G230108', 'Pedroza López', 'Rubén Emmanuel', 9.02629, 2),
('C155G230110', 'piña coronel', 'Jose Emiliano', 9.12366, 2),
('C155G230112', 'PORTILLA RANGEL', 'DIEGO LEONARDO', 9.3184, 2),
('C155G231028', 'Quiroz Nava', 'Kenia Hazarmavet', 9.2113, 2),
('C155G231028', 'Quiroz Nava', 'Kenia Hazarmavet', 9.2113, 2),
('C155G230114', 'REVELES VILLALOBOS', 'KAROL JSOSELIN', 8.34469, 2),
('C155G230114', 'REVELES VILLALOBOS', 'KAROL JSOSELIN', 8.92892, 2),
('C155G230114', 'REVELES VILLALOBOS', 'KAROL JSOSELIN', 8.63681, 2),
('C155G230117', 'Reyes Avila', 'Diana', 9.3184, 2),
('C155G230117', 'Reyes Avila', 'Diana', 9.51315, 2),
('C155G230580', 'Reynaga Avila', 'Mariana Judith', 9.02629, 2),
('C155G230580', 'Reynaga Avila', 'Mariana Judith', 8.83155, 2),
('C155G230580', 'Reynaga Avila', 'Mariana Judith', 8.83155, 2),
('C155G230120', 'Rivera Zamora', 'Andree Leonardo', 0, 2),
('C155G230122', 'Rocha Cortes', 'Jose Eduardo', 8.53944, 2),
('C155G230122', 'Rocha Cortes', 'Jose Eduardo', 9.41577, 2),
('C155G230122', 'Rocha Cortes', 'Jose Eduardo', 8.92892, 2),
('C155G220200', 'Ruiz Clemente', 'Alexander Ivanov', 8.44206, 2),
('C155G220200', 'Ruiz Clemente', 'Alexander Ivanov', 9.22103, 2),
('C155G230126', 'Sanchez Pedroza', 'Jose Miguel', 8.34469, 2),
('C155G230455', 'serrano ventura', 'America jazbet', 8.03311, 2),
('C155G230455', 'serrano ventura', 'America jazbet', 9.38656, 2),
('C155G230455', 'serrano ventura', 'America jazbet', 9.00682, 2),
('C155G230455', 'serrano ventura', 'America jazbet', 9.29893, 2),
('C155G230455', 'serrano ventura', 'America jazbet', 9.00682, 2),
('C155G230455', 'serrano ventura', 'America jazbet', 7.07887, 2),
('C155G230132', 'TORRES GUZMAN', 'DIEGO AARON', 0, 2),
('C155G230133', 'Tovar Velasco', 'Karol Gabriel', 7.37098, 2),
('C155G230133', 'Tovar Velasco', 'Karol Gabriel', 0.876339, 2),
('C155G230134', 'Vazquez Ricardez', 'Alan Joseph', 7.56573, 2),
('C155G230134', 'Vazquez Ricardez', 'Alan Joseph', 9.01655, 2),
('C155G230134', 'Vazquez Ricardez', 'Alan Joseph', 8.05258, 2),
('C155G230135', 'Vela Ibarra', 'Itzel Montserrath', 7.64362, 2),
('C155G230135', 'Vela Ibarra', 'Itzel Montserrath', 6.10516, 2),
('C155G230135', 'Vela Ibarra', 'Itzel Montserrath', 7.46835, 2),
('C155G230135', 'Vela Ibarra', 'Itzel Montserrath', 6.00779, 2),
('C155G230135', 'Vela Ibarra', 'Itzel Montserrath', 0.457644, 2),
('C155G230136', 'veloz castañeda', 'Ana Elizabeth', 8.63681, 2),
('C155G230136', 'veloz castañeda', 'Ana Elizabeth', 0, 2),
('C155G230137', 'Viramontes Alfaro', 'Daniel', 9.22103, 2),
('C155G230137', 'Viramontes Alfaro', 'Daniel', 8.92892, 2),
('C155G230137', 'Viramontes Alfaro', 'Daniel', 9.20156, 2),
('C155G230138', 'Yanes Salazar', 'Eduardo', 9.41577, 2),
('C155G230138', 'Yanes Salazar', 'Eduardo', 9.41577, 2),
('C155G230138', 'Yanes Salazar', 'Eduardo', 8.92892, 2),
('C155G230138', 'Yanes Salazar', 'Eduardo', 9.2113, 2),
('C155G230138', 'Yanes Salazar', 'Eduardo', 9.12366, 2),
('C155G230114', 'REVELES VILLALOBOS', 'KAROL JSOSELIN', 7.58281, 3),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.37332, 3),
('C155G230138', 'Yanes Salazar', 'Eduardo', 2.82901, 3),
('C155G230134', 'Vazquez Ricardez', 'Alan Joseph', 8.47807, 3),
('C155G230137', 'Viramontes Alfaro', 'Daniel', 9.01522, 3),
('C155G230135', 'Vela Ibarra', 'Itzel Montserrath', 6.86661, 3),
('C155G230070', 'Chavez Luevano', 'Yared Guadalupe', 0, 3),
('C155G230108', 'Pedroza López', 'Rubén Emmanuel', 9.2838, 3),
('C155G230455', 'serrano ventura', 'America jazbet', 8.37064, 3),
('C155G230122', 'Rocha Cortes', 'Jose Eduardo', 8.20949, 3),
('C155G230096', 'Lariz Altamira', 'Aarón Alexander', 8.29902, 3),
('C155G231028', 'Quiroz Nava', 'Kenia Hazarmavet', 9.37332, 3),
('C155G230060', 'Casillas Castruita', 'Angel Eduardo', 9.37332, 3),
('C155G230073', 'CHAVEZ SANCHEZ', 'JUAN JOSE', 8.47807, 3),
('C155G230093', 'Guerrero Basurto', 'Karen Nicole', 8.00358, 3),
('C155G230088', 'Flores Lugo', 'Diego Niam', 7.67234, 3),
('C155G220200', 'Ruiz Clemente', 'Alexander Ivanov', 9.46285, 3),
('C155G230138', 'Yanes Salazar', 'Eduardo', 9.10474, 3),
('C155G230094', 'GUZMAN MARTINEZ', 'ALEXIS', 9.73142, 3),
('C155G230090', 'gonzalez garcia', 'karol cristana', 8.65712, 3),
('C155G230580', 'Reynaga Avila', 'Mariana Judith', 9.2838, 3),
('C155G230098', 'madrid ponce', 'emiliano', 9.37332, 3),
('C155G230088', 'Flores Lugo', 'Diego Niam', 8.83617, 3),
('C155G230057', 'Arguelles Franco', 'Fatima', 8.19158, 3),
('C155G230102', 'MEDINA TORRES', 'AXEL AROLDO', 9.46285, 3),
('C155G230133', 'Tovar Velasco', 'Karol Gabriel', 9.46285, 3),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.6419, 3),
('C155G230588', 'cordova bautista', 'nahomi', 10, 3),
('C155G230100', 'MARTINEZ WONG', 'WENDY NAOMI', 9.73142, 3),
('C155G230106', 'MORIN CARRASCO', 'FATIMA ALEJANDRA', 7.22471, 3),
('C155G230087', 'Elias Vivero', 'Erick Santiago', 9.82095, 3),
('C155G230585', 'GONZALEZ MARTINEZ', 'DALILA AIDEE', 9.812, 3),
('C155G230455', 'serrano ventura', 'America jazbet', 8.81826, 3),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.6419, 3),
('C155G230102', 'MEDINA TORRES', 'AXEL AROLDO', 6.06088, 3),
('C155G230057', 'Arguelles Franco', 'Fatima', 8.55864, 3),
('C155G230090', 'gonzalez garcia', 'karol cristana', 8.92569, 3),
('C155G230138', 'Yanes Salazar', 'Eduardo', 9.10474, 3),
('C155G230135', 'Vela Ibarra', 'Itzel Montserrath', 7.92301, 3),
('C155G230122', 'Rocha Cortes', 'Jose Eduardo', 8.11996, 3),
('C155G230580', 'Reynaga Avila', 'Mariana Judith', 9.26589, 3),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.6419, 3),
('C155G230102', 'MEDINA TORRES', 'AXEL AROLDO', 9.10474, 3),
('C155G230098', 'madrid ponce', 'emiliano', 6.68756, 3),
('C155G230088', 'Flores Lugo', 'Diego Niam', 8.74664, 3),
('C155G230136', 'veloz castañeda', 'Ana Elizabeth', 7.85139, 3),
('C155G230057', 'Arguelles Franco', 'Fatima', 7.22471, 3),
('C155G230138', 'Yanes Salazar', 'Eduardo', 9.2838, 3),
('C155G230090', 'gonzalez garcia', 'karol cristana', 8.99731, 3),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.63295, 3),
('C155G230455', 'serrano ventura', 'America jazbet', 8.63921, 3),
('C155G230588', 'cordova bautista', 'nahomi', 0, 3),
('C155G230580', 'Reynaga Avila', 'Mariana Judith', 9.2838, 3),
('C155G230095', 'Hernandez Lara', 'Cristian Aaron', 7.84243, 3),
('C155G230100', 'MARTINEZ WONG', 'WENDY NAOMI', 0, 3),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.6419, 3),
('C155G230102', 'MEDINA TORRES', 'AXEL AROLDO', 6.1504, 3),
('C155G230135', 'Vela Ibarra', 'Itzel Montserrath', 6.68756, 3),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.6419, 3),
('C155G230106', 'MORIN CARRASCO', 'FATIMA ALEJANDRA', 0.814682, 3),
('C155G230122', 'Rocha Cortes', 'Jose Eduardo', 0, 3),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.46285, 3),
('C155G230455', 'serrano ventura', 'America jazbet', 8.54969, 3),
('C155G230098', 'madrid ponce', 'emiliano', 8.83617, 3),
('C155G230104', 'Montes Rivera', 'Andrea Ximena', 5.46106, 3),
('C155G230087', 'Elias Vivero', 'Erick Santiago', 1.70098, 3),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.6419, 3),
('C155G230117', 'Reyes Avila', 'Diana', 8.65712, 3),
('C155G230090', 'gonzalez garcia', 'karol cristana', 7.02775, 3),
('C155G230580', 'Reynaga Avila', 'Mariana Judith', 9.19427, 3),
('C155G230095', 'Hernandez Lara', 'Cristian Aaron', 8.00358, 3),
('C155G230065', 'Cazabal Peña', 'Camila Hanna', 9.55237, 3),
('C155G230090', 'gonzalez garcia', 'karol cristana', 8.65712, 3),
('C155G230455', 'serrano ventura', 'America jazbet', 0, 3),
('C155G230103', 'melendez gonzalez', 'leonardo ari', 2.86482, 3),
('C155G230128', 'segura catalan', 'neri isair', 1.79051, 3),
('C155G230110', 'piña coronel', 'Jose Emiliano', 8.45121, 3);

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
  `Apellido_mat` varchar(100) NOT NULL,
  `Perfil` text NOT NULL,
  `correo_e` varchar(100) NOT NULL,
  `Telefono` varchar(100) NOT NULL,
  `id_turno` int(11) NOT NULL,
  `id_cct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'Pendiente'),
(2, 'Inactivo'),
(3, 'Suspendido'),
(4, 'Activo'),
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

--
-- Índices para tablas volcadas
--

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
  ADD KEY `fk_docente_cct` (`id_cct`);

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
-- AUTO_INCREMENT de la tabla `centro_trabajo`
--
ALTER TABLE `centro_trabajo`
  MODIFY `id_cct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT;

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
