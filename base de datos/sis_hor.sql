-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2025 a las 05:59:44
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
-- Base de datos: `ignorancia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `descripcion`) VALUES
(1, 'Matematicas'),
(2, 'Geografia'),
(3, 'Historia_de_mexico'),
(4, 'Programacion'),
(5, 'Automotriz'),
(6, 'Anatomia'),
(7, 'Ciencias_naturales'),
(8, 'Deportes'),
(9, 'Astronomia'),
(10, 'Mitologia_griega');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_pregunta` int(11) NOT NULL,
  `pregunta` varchar(200) NOT NULL,
  `opcion_1` varchar(100) NOT NULL,
  `opcion_2` varchar(100) NOT NULL,
  `opcion_3` varchar(100) NOT NULL,
  `opcion_4` varchar(100) NOT NULL,
  `correcto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id_pregunta`, `pregunta`, `opcion_1`, `opcion_2`, `opcion_3`, `opcion_4`, `correcto`, `id_categoria`) VALUES
(1, '¿Cuál es el valor de 99 x 77?', '7,620', '7,623', '7,621', '7,629', 2, 1),
(2, '¿Cuánto es 144 ÷ 12?', '10', '14', '13', '12', 4, 1),
(3, 'Si tienes 3/4 de una pizza y comes 1/4, ¿cuánto te queda?', '1/2', '1/8', '1/4', '1/3', 1, 1),
(4, '¿Cuál es el valor de 10^2?', '20', '50', '200', '100', 4, 1),
(5, '¿Cuánto mide la mitad de un ángulo recto, si completo mide 90 grados?', '45 grados', '60 grados', '30 grados', '50 grados', 1, 1),
(6, '¿Cuánto es 25% de 200?', '100', '50', '40', '60', 2, 1),
(7, 'Si en una clase hay 40 estudiantes y el 25% son hombres, ¿cuántos hombres hay?', '10', '15', '20', '25', 1, 1),
(8, '¿Cuánto es 33.5 x 22.5?', '752.71', '753.75', '753.70', '753.76', 2, 1),
(9, 'Si un triángulo tiene lados de 3 cm, 4 cm, y 5 cm, ¿qué tipo de triángulo es?', 'Equilátero', 'Rectángulo', 'Isósceles', 'Escaleno', 2, 1),
(10, 'Si recorres 180 km en 3 horas, ¿cuál es tu velocidad promedio?', '40 km/h', '60 km/h', '80 km/h', '90 km/h', 2, 1),
(11, '¿Cuál es la fracción equivalente a 0.75?', '1/2', '3/4', '2/3', '1/4', 2, 1),
(12, '¿Cuál es el valor de √64?', '6', '8', '10', '12', 2, 1),
(13, 'Si tienes un cuadrado de 6 cm de lado, ¿cuál es su área?', '12 cm²', '36 cm²', '24 cm²', '18 cm²', 2, 1),
(14, '¿Cuánto es 15% de 300?', '20', '30', '45', '60', 3, 1),
(15, '¿Cuánto es 3^3?', '6', '9', '12', '27', 4, 1),
(16, '¿Cuánto es 17.5 + 15.3?', '32.8', '32', '31.8', '32.5', 1, 1),
(17, '¿Cuánto mide cada ángulo interno de un cuadrado?', '45°', '90°', '60°', '120°', 2, 1),
(18, 'Si un reloj muestra las 3:00, ¿qué ángulo forman las manecillas del reloj?', '90°', '180°', '45°', '30°', 1, 1),
(19, '¿Cuánto es 25 x 13?', '324', '325', '328', '320', 2, 1),
(20, '¿Cuáles son los primeros 8 dígitos de pi?', '3.1415926', '3.1416923', '3.1415920', '3.1415921', 2, 1),
(21, '¿Cuál es la fracción equivalente a 0.25?', '1/3', '1/4', '1/2', '2/5', 2, 1),
(22, '¿Cuánto es 22.5 + 33.75?', '56.22', '56.25', '56.20', '55.25', 2, 1),
(23, 'Si un círculo tiene un diámetro de 10 cm, ¿cuál es su radio?', '4 cm', '6 cm', '5 cm', '8 cm', 3, 1),
(24, '¿Cuánto es 75% de 80?', '50', '60', '65', '55', 2, 1),
(25, 'Si el perímetro de un cuadrado es 20 cm, ¿cuánto mide cada lado?', '8 cm', '10 cm', '5 cm', '15 cm', 3, 1),
(26, '¿Cuánto es 91 x 9?', '839', '810', '819', '829', 3, 1),
(27, '¿Cuál es el porcentaje de 0.75?', '50%', '75%', '100%', '60%', 2, 1),
(28, '¿Cuánto es 1 litro en mililitros?', '500 ml', '1000 ml', '750 ml', '1500 ml', 2, 1),
(29, '¿Cuál es la conversión de 3 metros a centímetros?', '300 cm', '30 cm', '3000 cm', '100 cm', 1, 1),
(30, '¿Cuál es el resultado de 8 al cubo?', '512', '508', '510', '528 gramos', 1, 1),
(31, '¿Cuánto es 20% de 50?', '5', '10', '15', '20', 2, 1),
(32, '¿Cuántos minutos hay en 3 horas?', '120', '180', '240', '150', 2, 1),
(33, '¿Cuánto es 12.1 x 13.1?', '158.50', '158.51', '158.53', '158.54', 2, 1),
(34, '¿Cuánto es √49?', '5', '6', '7', '8', 3, 1),
(35, '¿Cuál es la fórmula para el área de un círculo?', 'A = 2πr', 'A = πr²', 'A = πr', 'A = 2πr²', 2, 1),
(36, 'Si tienes una pizza dividida en 8 partes y comes 3, ¿qué fracción queda?', '3/8', '5/8', '4/8', '2/8', 2, 1),
(37, '¿Cuántos segundos hay en una hora?', '3600', '4000', '1800', '2400', 1, 1),
(38, '¿Cuánto es 30.2 x 12?', '362.4', '360.1', '362.2', '362.0', 1, 1),
(39, 'Si un pentágono tiene lados de 4 cm, ¿cuál es su perímetro?', '15 cm', '20 cm', '25 cm', '18 cm', 2, 1),
(40, '¿Cuánto es 61.5 + 23.7?', '85.0', '85.2', '85.5', '85.7', 2, 1),
(41, 'Si tienes 3/5 de un litro de agua y bebes 1/5, ¿cuánto te queda?', '1/5', '2/5', '3/5', '4/5', 2, 1),
(42, '¿Cuánto es 1000 gramos en kilogramos?', '0.5 kg', '1 kg', '1.5 kg', '2 kg', 2, 1),
(43, 'Si recorres 240 km en 4 horas, ¿cuál es tu velocidad promedio?', '40 km/h', '50 km/h', '60 km/h', '80 km/h', 3, 1),
(44, '¿Cuántos centímetros hay en un metro?', '50 cm', '100 cm', '150 cm', '200 cm', 2, 1),
(45, '¿Cuál es el valor decimal de la fracción 3/4?', '0.5', '0.25', '0.75', '1.25', 3, 1),
(46, 'Si una hora tiene 60 minutos, ¿cuántos minutos hay en medio día?', '720', '600', '540', '480', 1, 1),
(47, '¿Cuánto es 61 x 8?', '482', '488', '486', '486', 2, 1),
(48, '¿Cuántos lados tiene un hexágono?', '5', '6', '7', '8', 2, 1),
(49, 'Si un triángulo tiene un ángulo de 90 grados, ¿qué tipo de triángulo es?', 'Isósceles', 'Escaleno', 'Rectángulo', 'Equilátero', 3, 1),
(50, '¿Cuál es la fracción equivalente a 0.5?', '1/2', '2/2', '3/2', '4/2', 1, 1),
(51, '¿Cuál es el río más largo del mundo?', 'Nilo', 'Amazonas', 'Yangtsé', 'Misisipi', 2, 2),
(52, '¿En qué continente se encuentra el desierto del Sahara?', 'Asia', 'África', 'América', 'Oceanía', 2, 2),
(53, '¿Cuál es el océano más grande?', 'Atlántico', 'Índico', 'Pacífico', 'Ártico', 3, 2),
(54, '¿Qué país tiene la mayor cantidad de islas?', 'Japón', 'Suecia', 'Filipinas', 'Noruega', 2, 2),
(55, '¿En qué país se encuentra la Gran Muralla?', 'China', 'Japón', 'Corea del Sur', 'Mongolia', 1, 2),
(56, '¿Cuál es la capital de Canadá?', 'Toronto', 'Vancouver', 'Ottawa', 'Montreal', 3, 2),
(57, '¿Cuál es el país más pequeño del mundo?', 'Ciudad del Vaticano', 'Mónaco', 'San Marino', 'Liechtenstein', 1, 2),
(58, '¿En qué país se encuentra el monte Everest?', 'India', 'Nepal', 'China', 'Pakistán', 2, 2),
(59, '¿Cuál es el país más poblado de África?', 'Egipto', 'Nigeria', 'Sudáfrica', 'Etiopía', 2, 2),
(60, '¿Qué país tiene la mayor extensión territorial?', 'Rusia', 'Canadá', 'China', 'Estados Unidos', 1, 2),
(61, '¿Cuál es el país más grande de Sudamérica?', 'Argentina', 'Brasil', 'Perú', 'Colombia', 2, 2),
(62, '¿Cuál es la capital de Australia?', 'Sídney', 'Melbourne', 'Brisbane', 'Canberra', 4, 2),
(63, '¿Qué país es conocido como la \"tierra del sol naciente\"?', 'China', 'Japón', 'Corea del Sur', 'Tailandia', 2, 2),
(64, '¿En qué continente se encuentra el monte Kilimanjaro?', 'Asia', 'África', 'América del Sur', 'Europa', 2, 2),
(65, '¿Cuál es el país más montañoso de Europa?', 'Alemania', 'Suiza', 'Francia', 'España', 2, 2),
(66, '¿Cuál es la capital de Egipto?', 'Alejandría', 'Luxor', 'El Cairo', 'Asuán', 3, 2),
(67, '¿Cuál es el continente menos poblado?', 'Antártida', 'Oceanía', 'Europa', 'África', 1, 2),
(68, '¿Qué país tiene la mayor cantidad de lagos?', 'Canadá', 'Suecia', 'Finlandia', 'Rusia', 1, 2),
(69, '¿Cuál es el país más grande de África en términos de área?', 'Egipto', 'Argelia', 'Sudáfrica', 'Nigeria', 2, 2),
(70, '¿Cuál es la capital de Brasil?', 'Río de Janeiro', 'Sao Paulo', 'Brasilia', 'Salvador', 3, 2),
(71, '¿Cuál es el único país que tiene costas tanto en el Mar Rojo como en el Golfo Pérsico?', 'Arabia Saudita', 'Omán', 'Irak', 'Egipto', 1, 2),
(72, '¿Cuál es el país más poblado del mundo?', 'China', 'India', 'Estados Unidos', 'Indonesia', 1, 2),
(73, '¿En qué océano se encuentran las Islas Maldivas?', 'Atlántico', 'Índico', 'Pacífico', 'Ártico', 2, 2),
(74, '¿Qué cordillera separa Europa de Asia?', 'Andes', 'Himalayas', 'Montañas Rocosas', 'Montes Urales', 4, 2),
(75, '¿Cuál es la capital de Argentina?', 'Buenos Aires', 'Santiago', 'Lima', 'Montevideo', 1, 2),
(76, '¿Cuál es el país más largo de Sudamérica?', 'Perú', 'Chile', 'Argentina', 'Brasil', 2, 2),
(77, '¿Cuál es el desierto más grande del mundo?', 'Desierto de Gobi', 'Desierto del Sahara', 'Desierto de Kalahari', 'Desierto de Atacama', 2, 2),
(78, '¿En qué país está la Torre Eiffel?', 'Italia', 'Francia', 'España', 'Alemania', 2, 2),
(79, '¿Cuál es el lago más grande de América del Sur?', 'Lago Titicaca', 'Lago Maracaibo', 'Lago Poopó', 'Lago de Valencia', 1, 2),
(80, '¿Cuál es la capital de Italia?', 'Milán', 'Venecia', 'Roma', 'Florencia', 3, 2),
(81, '¿Qué país tiene la mayor cantidad de volcanes activos?', 'Japón', 'Indonesia', 'México', 'Estados Unidos', 2, 2),
(82, '¿Cuál es la capital de Rusia?', 'San Petersburgo', 'Kiev', 'Moscú', 'Kazan', 3, 2),
(83, '¿En qué continente está el río Danubio?', 'Europa', 'Asia', 'América', 'Oceanía', 1, 2),
(84, '¿Cuál es la capital de India?', 'Mumbai', 'Nueva Delhi', 'Bangalore', 'Calcuta', 2, 2),
(85, '¿Cuál es la capital de Japón?', 'Osaka', 'Kioto', 'Hiroshima', 'Tokio', 4, 2),
(86, '¿Cuál es el único continente que no tiene desiertos?', 'Europa', 'América', 'Oceanía', 'Asia', 1, 2),
(87, '¿Qué país tiene la montaña más alta del mundo?', 'Nepal', 'China', 'Pakistán', 'India', 1, 2),
(88, '¿Cuál es el idioma oficial de Brasil?', 'Español', 'Inglés', 'Portugués', 'Francés', 3, 2),
(89, '¿En qué país se encuentra el volcán Etna?', 'Grecia', 'España', 'Italia', 'Turquía', 3, 2),
(90, '¿En qué continente se encuentra el país de Nueva Zelanda?', 'Asia', 'Oceanía', 'Europa', 'América', 2, 2),
(91, '¿Cuál es el punto más bajo de la Tierra?', 'Valle de la Muerte', 'Mar Muerto', 'Lago Baikal', 'Gran Cañón', 2, 2),
(92, '¿Cuál es la capital de Alemania?', 'Hamburgo', 'Berlín', 'Múnich', 'Frankfurt', 2, 2),
(93, '¿Cuál es el país más largo del mundo?', 'Canadá', 'Rusia', 'China', 'Estados Unidos', 2, 2),
(94, '¿Qué país comparte la frontera más larga con Estados Unidos?', 'Canadá', 'México', 'Rusia', 'Brasil', 1, 2),
(95, '¿Cuál es el país más poblado de América?', 'Canadá', 'Estados Unidos', 'Brasil', 'México', 2, 2),
(96, '¿Cuál es el desierto más frío del mundo?', 'Sahara', 'Antártida', 'Gobi', 'Kalahari', 2, 2),
(97, '¿Cuál es el país más occidental de Europa?', 'Alemania', 'Portugal', 'Italia', 'España', 2, 2),
(98, '¿En qué país se encuentra la selva amazónica?', 'Venezuela', 'Brasil', 'Argentina', 'Colombia', 2, 2),
(99, '¿Cuál es la capital de Grecia?', 'Atenas', 'Salónica', 'Heraclión', 'Patras', 1, 2),
(100, '¿Cuál es el mar entre Europa y África?', 'Mar Negro', 'Mar Báltico', 'Mar Mediterráneo', 'Mar del Norte', 3, 2),
(101, '¿Quién fue el último emperador azteca?', 'Cuauhtémoc', 'Moctezuma I', 'Moctezuma II', 'Cuitláhuac', 3, 3),
(102, '¿Qué cultura mesoamericana construyó Chichen Itzá?', 'Azteca', 'Maya', 'Tolteca', 'Zapoteca', 2, 3),
(103, '¿En qué año cayó Tenochtitlan?', '1510', '1521', '1530', '1545', 2, 3),
(104, '¿Quién fue el líder del movimiento de Independencia en México?', 'Benito Juárez', 'Miguel Hidalgo y Costilla', 'José María Morelos', 'Vicente Guerrero', 2, 3),
(105, '¿Cuál fue el primer presidente de México?', 'Vicente Guerrero', 'Guadalupe Victoria', 'Benito Juárez', 'Agustín de Iturbide', 2, 3),
(106, '¿En qué año comenzó la Guerra de Independencia de México?', '1810', '1821', '1808', '1824', 1, 3),
(107, '¿Qué tratado dio fin a la guerra entre México y Estados Unidos en 1848?', 'Tratado de Tordesillas', 'Tratado de Guadalupe Hidalgo', 'Tratado de More', 'Tratado de Córdoba', 2, 3),
(108, '¿Quién fue el primer emperador de México?', 'Agustín de Iturbide', 'Maximiliano de Habsburgo', 'Porfirio Díaz', 'Benito Juárez', 1, 3),
(109, '¿Qué presidente mexicano impulsó la Reforma Liberal?', 'Benito Juárez', 'Lázaro Cárdenas', 'Venustiano Carranza', 'Francisco I. Madero', 1, 3),
(110, '¿En qué año fue promulgada la Constitución de la Revolucíon mexicana?', '1910', '1915', '1917', '1920', 3, 3),
(111, '¿Quién fue el líder de la Revolución Mexicana que controló el norte del país?', 'Emiliano Zapata', 'Álvaro Obregón', 'Francisco Villa', 'Porfirio Díaz', 3, 3),
(112, '¿Quién fue conocido como el \"Benemérito de las Américas\"?', 'Benito Juárez', 'Vicente Guerrero', 'Miguel Hidalgo', 'José María Morelos', 1, 3),
(113, '¿Qué cultura prehispánica construyó Monte Albán?', 'Zapoteca', 'Mexica', 'Totonaca', 'Maya', 1, 3),
(114, '¿En qué año se exilió Porfirio Díaz tras la Revolución Mexicana?', '1910', '1911', '1912', '1914', 2, 3),
(115, '¿Cuál fue la principal causa de la Guerra de los Pasteles?', 'El comercio de armas', 'Reclamos de Francia por daños', 'El control de puertos mexicanos', 'La intervención estadounidense', 2, 3),
(116, '¿Quién proclamó el Plan de Ayutla en 1854?', 'Juan Álvarez', 'Benito Juárez', 'Maximiliano de Habsburgo', 'Antonio López de Santa Anna', 1, 3),
(117, '¿Qué acontecimiento histórico se celebra el 5 de mayo en México?', 'La Independencia de México', 'La Revolución Mexicana', 'La Batalla de Puebla', 'La Constitución de 1917', 3, 3),
(118, '¿Qué país intentó invadir México en 1838 en la Guerra de los Pasteles?', 'Francia', 'España', 'Inglaterra', 'Estados Unidos', 1, 3),
(119, '¿Quién fue presidente de México durante la Guerra Cristera?', 'Plutarco Elías Calles', 'Álvaro Obregón', 'Venustiano Carranza', 'Lázaro Cárdenas', 1, 3),
(120, '¿En qué año fue la nacionalización del petróleo en México?', '1929', '1938', '1940', '1952', 2, 3),
(121, '¿Quién fundó la Secretaría de Educación Pública en México?', 'Benito Juárez', 'Porfirio Díaz', 'José Vasconcelos', 'Lázaro Cárdenas', 3, 3),
(122, '¿Cuál fue el lema de Emiliano Zapata durante la Revolución Mexicana?', 'Tierra y libertad', 'Por la patria y el honor', 'Libertad y justicia', 'Unidad y paz', 1, 3),
(123, '¿Qué líder revolucionario fue asesinado en 1919?', 'Pancho Villa', 'Francisco I. Madero', 'Emiliano Zapata', 'Venustiano Carranza', 3, 3),
(124, '¿Quién fue el dictador mexicano que gobernó por más de 30 años?', 'Plutarco Elías Calles', 'Lázaro Cárdenas', 'Venustiano Carranza', 'Porfirio Díaz', 4, 3),
(125, '¿Cuál fue el evento que dio inicio a la Guerra de Independencia en México?', 'Firma del Plan de Iguala', 'Batalla de Puebla', 'Grito de Dolores', 'Muerte de José María Morelos', 3, 3),
(126, '¿Quién firmó el Plan de Iguala?', 'Vicente Guerrero', 'Agustín de Iturbide', 'Guadalupe Victoria', 'Iturbide y Victoria', 4, 3),
(127, '¿Quién proclamó el Plan de San Luis en 1910?', 'Emiliano Zapata', 'Francisco I. Madero', 'Pancho Villa', 'Venustiano Carranza', 2, 3),
(128, '¿Qué cultura construyó la las piramides del sol y la luna?', 'Teotihuacana', 'Mexica', 'Zapoteca', 'Olmeca', 1, 3),
(129, '¿Quién fue el sucesor de Lázaro Cárdenas en la presidencia de México?', 'Emilio Portes Gil', 'Manuel Ávila Camacho', 'Adolfo Ruiz Cortines', 'Plutarco Elías Calles', 2, 3),
(130, '¿En qué año fue la Conquista de México?', '1521', '1500', '1600', '1550', 1, 3),
(131, '¿Quién fue el virrey que gobernaba cuando ocurrió la Independencia de México?', 'Francisco Javier Venegas', 'Juan Ruiz de Apodaca', 'Félix María Calleja', 'Juan de O Donoju', 2, 3),
(132, '¿Qué presidente mexicano firmó la Constitución de 1857?', 'Ignacio Comonfort', 'Benito Juárez', 'Valentín Gómez Farías', 'Miguel Miramón', 1, 3),
(133, '¿Qué país apoyó a Maximiliano en su imperio en México?', 'España', 'Inglaterra', 'Francia', 'Estados Unidos', 3, 3),
(134, '¿En qué año llegó Cristóbal Colón a América?', '1519', '1492', '1521', '1482', 2, 3),
(135, '¿Qué personaje fue conocido como \"El Siervo de la Nación\"?', 'Miguel Hidalgo', 'Vicente Guerrero', 'José María Morelos', 'Emiliano Zapata', 3, 3),
(136, '¿En qué ciudad de México se firmó el Plan de Iguala?', 'Morelia', 'Ciudad de México', 'Iguala', 'Puebla', 3, 3),
(137, '¿Qué país invadió México en 1846?', 'Estados Unidos', 'España', 'Francia', 'Inglaterra', 1, 3),
(138, '¿Quién fue el último virrey de la Nueva España?', 'Juan de O Donoju', 'Juan Ruiz de Apodaca', 'Félix María Calleja', 'Agustín de Iturbide', 1, 3),
(139, '¿Qué cultura mesoamericana es considerada la \"cultura madre\"?', 'Olmeca', 'Mexica', 'Zapoteca', 'Totonaca', 1, 3),
(140, '¿Qué ciudad fue capital de los mexicas?', 'Texcoco', 'Tlaxcala', 'Tenochtitlan', 'Teotihuacan', 3, 3),
(141, '¿En qué año fue la expropiación petrolera?', '1930', '1938', '1942', '1945', 2, 3),
(142, '¿Qué presidente fue conocido como \"El Tata\"?', 'Benito Juárez', 'Lázaro Cárdenas', 'Plutarco Elías Calles', 'Francisco I. Madero', 2, 3),
(143, '¿Qué documento fue la primera Constitución de México?', 'Constitución de 1824', 'Constitución de 1857', 'Constitución de 1917', 'Plan de Ayutla', 1, 3),
(144, '¿Cuál es el símbolo de la bandera de México?', 'Una serpiente', 'Un nopal', 'Águila devorando una serpiente', 'Una estrella', 3, 3),
(145, '¿En qué año fue fusilado Maximiliano de Habsburgo?', '1867', '1865', '1870', '1872', 1, 3),
(146, '¿Qué presidente implementó el programa \"Plan DN-III\"?', 'Gustavo Díaz Ordaz', 'Vicente Fox', 'Lázaro Cárdenas', 'Porfirio Díaz', 1, 3),
(147, '¿Qué revolucionario fue presidente en 1920 tras la muerte de Carranza?', 'Francisco I. Madero', 'Álvaro Obregón', 'Venustiano Carranza', 'Emiliano Zapata', 2, 3),
(148, '¿Cuál fue la capital del Imperio Mexica?', 'Tenochtitlan', 'Texcoco', 'Tlaxcala', 'Teotihuacan', 1, 3),
(149, '¿En qué año murió Benito Juárez?', '1870', '1872', '1875', '1880', 2, 3),
(150, '¿Qué personaje histórico dijo \"El respeto al derecho ajeno es la paz\"?', 'Miguel Hidalgo', 'Benito Juárez', 'Francisco Villa', 'Emiliano Zapata', 2, 3),
(151, '¿Para qué se usa Python?', 'Jugar videojuegos', 'Programar', 'Escuchar música', 'Leer noticias', 2, 4),
(152, '¿Qué significa `print()` en Python?', 'Borrar pantalla', 'Mostrar en pantalla', 'Dividir números', 'Multiplicar números', 2, 4),
(153, '¿Cuál es el símbolo para sumar en Python?', '`+`', '`-`', '`/`', '`*`', 1, 4),
(154, '¿Qué hace el símbolo `=` en Python?', 'Compara valores', 'Asigna un valor a una variable', 'Resta valores', 'Divide valores', 2, 4),
(155, '¿Cuál es el resultado de `2 + 3` en Python?', '5', '6', '23', '2', 1, 4),
(156, '¿Cómo se guarda el número 10 en una variable llamada `x`?', '`x == 10`', '`10 = x`', '`x = 10`', '`x => 10`', 3, 4),
(157, '¿Qué muestra `print(\"Hola\")`?', 'Hola', 'print', '\"Hola\"', 'Nada', 3, 4),
(158, '¿Qué significa `#` en Python?', 'Comentar una línea', 'Multiplicar', 'Sumar', 'Crear una variable', 1, 4),
(159, '¿Qué tipo de dato es `True` en Python?', 'Número', 'Texto', 'Booleano', 'Decimal', 3, 4),
(160, '¿Cuál es el valor de `2 * 3`?', '5', '6', '8', '9', 2, 4),
(161, '¿Qué significa `input()` en Python?', 'Mostrar en pantalla', 'Pedir un valor al usuario', 'Borrar pantalla', 'Sumar dos números', 2, 4),
(162, '¿Qué operador se usa para dividir?', '+', '/', '*', '-', 2, 4),
(163, '¿Cuál es el símbolo para restar?', '`+`', '`-`', '`/`', '`*`', 2, 4),
(164, '¿Cuál es el resultado de `4 + 4`?', '6', '8', '10', '12', 2, 4),
(165, '¿Qué tipo de dato es `\"Hola\"` en Python?', 'Número', 'Booleano', 'Cadena de texto', 'Decimal', 3, 4),
(166, '¿Qué muestra `print(5 + 5)`?', '5+5', '55', '10', '25', 3, 4),
(167, '¿Qué valor tiene `int(\"10\")` en Python?', '10.0', '10', '\"10\"', 'Verdadero', 2, 4),
(168, '¿Cómo se representa un comentario en Python?', '#', '//', '*', '%', 1, 4),
(169, '¿Qué hace `print(\"Python\")`?', 'Muestra Python', 'Muestra una variable', 'Borrar pantalla', 'Muestra un número', 1, 4),
(170, '¿Qué es una variable en programación?', 'Un comentario', 'Un contenedor de datos', 'Una operación matemática', 'Un número', 2, 4),
(171, '¿Cómo se escribe una lista vacía?', '{ }', '[ ]', '( )', '<>', 2, 4),
(172, '¿Cuál es el resultado de `10 / 2`?', '4', '5', '8', '12', 2, 4),
(173, '¿Qué muestra `print(\"5\" + \"5\")`?', '10', '55', '5', '25', 2, 4),
(174, '¿Cuál es el operador para multiplicar?', '+', '`*`', '%', '`-`', 2, 4),
(175, '¿Qué se necesita para crear una función en Python?', 'for', 'while', 'def', 'var', 3, 4),
(176, '¿Qué hace `len(\"Hola\")`?', 'Nada', 'Borra texto', 'Cuenta los caracteres', 'Muestra \"Hola\"', 3, 4),
(177, '¿Cuál de estos es un número entero?', '\"5\"', '10', '3.14', 'True', 2, 4),
(178, '¿Cuál es el valor de `2 ** 3`?', '5', '6', '8', '9', 3, 4),
(179, '¿Qué significa `float` en Python?', 'Texto', 'Número decimal', 'Booleano', 'Entero', 2, 4),
(180, '¿Cómo se declara una variable `a` con valor 1?', '`a == 1`', '`a = 1`', '`int a = 1`', '`a=1`', 2, 4),
(181, '¿Qué hace `print(10 == 10)`?', 'Muestra True', 'Muestra 10', 'Muestra 0', 'Da error', 1, 4),
(182, '¿Qué significa `bool` en Python?', 'Texto', 'Decimal', 'Booleano', 'Entero', 3, 4),
(183, '¿Qué tipo de valor es `3.14` en Python?', 'Decimal', 'Entero', 'Cadena de texto', 'Booleano', 1, 4),
(184, '¿Qué hace `print(\"Hola\" * 3)`?', 'Nada', 'Error', 'Muestra `HolaHolaHola`', 'Muestra `3Hola`', 3, 4),
(185, '¿Qué significa `str()`?', 'Convierte a texto', 'Convierte a decimal', 'Convierte a número entero', 'Nada', 1, 4),
(186, '¿Cuál es el resultado de `4 % 2`?', '4', '1', '0', '2', 3, 4),
(187, '¿Qué tipo de dato es `None`?', 'Entero', 'Decimal', 'Cadena', 'Ninguno', 4, 4),
(188, '¿Qué ciclo recorre los datos de una lista?', '`for`', '`while`', '`loop`', '`def`', 1, 4),
(189, '¿Qué se obtiene con `input()`?', 'Texto', 'Número', 'Variable', 'Valor ingresado por el usuario', 4, 4),
(190, '¿Cuál es el símbolo para \"y\" lógico?', '`and`', '`or`', '`not`', '`&`', 1, 4),
(191, '¿Qué tipo de dato es `[1, 2, 3]`?', 'Lista', 'Texto', 'Entero', 'Decimal', 1, 4),
(192, '¿Qué hace el símbolo `!=` en Python?', 'Suma', 'Multiplica', 'Compara si no son iguales', 'Asigna valor', 3, 4),
(193, '¿Qué tipo de dato es `True` y `False`?', 'Booleano', 'Entero', 'Decimal', 'Texto', 1, 4),
(194, '¿Qué hace `print(\"3\" + \"4\")`?', 'Muestra 34', 'Muestra 7', 'Muestra \"3 4\"', 'Muestra 3.4', 1, 4),
(195, '¿Cómo se representa el número 10.5?', 'Entero', 'Decimal', 'Cadena', 'Booleano', 2, 4),
(196, '¿Qué hace el código `if`?', 'Crea un ciclo', 'Evalúa una condición', 'Crea una lista', 'Suma dos números', 2, 4),
(197, '¿Cuál es el operador lógico \"o\"?', '`and`', '`or`', '`not`', '`&`', 2, 4),
(198, '¿Qué tipo de valor es `\"Hola\"`?', 'Cadena', 'Número', 'Booleano', 'Lista', 1, 4),
(199, '¿Qué hace `print(len(\"hola\"))`?', 'Muestra 4', 'Muestra hola', 'Muestra 3', 'Da error', 2, 4),
(200, '¿Cómo se representa un conjunto en Python?', '[ ]', '{ }', '( )', '< >', 2, 4),
(201, '¿Cuál es el circuito más antiguo?', 'Silverstone', 'Mónaco', 'Monza', 'Spa', 3, 5),
(202, '¿Más títulos en la F1?', 'Senna', 'Schumacher', 'Hamilton', 'Vettel', 2, 5),
(203, '¿Carrera famosa de NASCAR?', 'Daytona 500', 'Indianapolis 500', 'Coca-Cola 600', 'Southern 500', 1, 5),
(204, '¿Más títulos de WRC?', 'McRae', 'Sainz', 'Loeb', 'Mäkinen', 3, 5),
(205, '¿Más victorias Le Mans?', 'Ferrari', 'Porsche', 'Audi', 'Toyota', 2, 5),
(206, '¿Primer campeón de la Formula 1?', 'Fangio', 'Farina', 'Ascari', 'Brabham', 2, 5),
(207, '¿Quién es conocido como \"Rey de Mónaco\"?', 'Senna', 'Prost', 'Lauda', 'Stewart', 1, 5),
(208, '¿En que año fue la primer carrera de F1?', '1950', '1948', '1952', '1946', 1, 5),
(209, '¿Más éxito en WRC?', 'Ford', 'Citroën', 'Subaru', 'Lancia', 4, 5),
(210, '¿Cuál piloto gano el GP de Monaco en 1931?', 'Moss', 'Fangio', 'Farina', 'Chiron', 4, 5),
(211, '¿Quién tiene más victorias Le Mans?', 'Ickx', 'Kristensen', 'Bell', 'Pescarolo', 2, 5),
(212, '¿En qué circuito se realiza el GP de Canadá \"F1\"?', 'Américas', 'Mónaco', 'Gilles Villeneuve', 'Suzuka', 3, 5),
(213, '¿Quién es conocido como \"The Intimidator\"?', 'Petty', 'Earnhardt', 'Gordon', 'Johnson', 2, 5),
(214, '¿Cuál de estos es el campeonato de resistencia?', 'NASCAR', 'IndyCar', 'WEC', 'Formula E', 3, 5),
(215, '¿Cuál circuito es conocido como \"Catedral del Automovilismo\"?', 'Nürburgring', 'Monza', 'Silverstone', 'Spa', 2, 5),
(216, '¿Cuál es el piloto con más poles de F1?', 'Senna', 'Schumacher', 'Hamilton', 'Vettel', 3, 5),
(217, '¿Cuál es el circuito más rápido?', 'Monza', 'Silverstone', 'Spa', 'Suzuka', 1, 5),
(218, '¿Cuál es el piloto con más victorias del GP en Italia?', 'Schumacher', 'Senna', 'Hamilton', 'Vettel', 1, 5),
(219, '¿Qué piloto tiene Triple Corona?', 'Senna', 'Alonso', 'Hill', 'Andretti', 3, 5),
(220, '¿Cuál es el circuito más corto?', 'Mónaco', 'Montreal', 'Silverstone', 'Interlagos', 1, 5),
(221, '¿Quién fue el primer campeón de Formula E?', 'Piquet Jr.', 'Buemi', 'di Grassi', 'Vergne', 1, 5),
(222, '¿Cuál es la carrera de resistencia más antigua?', 'Daytona', 'Sebring', 'Le Mans', 'Silverstone', 3, 5),
(223, '¿Cuál piloto tiene más podios en F1?', 'Senna', 'Schumacher', 'Hamilton', 'Vettel', 3, 5),
(224, '¿Cuál es el constructor con más títulos de F1?', 'McLaren', 'Mercedes', 'Ferrari', 'Red Bull', 3, 5),
(225, '¿Cuál es la distancia en las carreras de F1?', '200 km', '305 km', '500 km', '1000 km', 2, 5),
(226, '¿En qué año apareció ABS en la Formula 1?', '1985', '1990', '1988', '1992', 3, 5),
(227, '¿Cuál es el campeón moderno Mercedes?', 'Hamilton', 'Rosberg', 'Schumacher', 'Fangio', 1, 5),
(228, '¿Cuál es el circuito con más curvas en la Formula 1?', 'Suzuka', 'Mónaco', 'Américas', 'Silverstone', 3, 5),
(229, '¿Cuál es el piloto con más vueltas rápidas en F1?', 'Senna', 'Schumacher', 'Räikkönen', 'Prost', 2, 5),
(230, '¿Cuál es el Rally más prestigioso del WRC?', 'Montecarlo', 'Finlandia', 'Gales', 'Suecia', 1, 5),
(231, '¿Dónde se realiza el GP de Interlagos?', 'Argentina', 'Brasil', 'México', 'Chile', 2, 5),
(232, '¿Cuál es el piloto con más títulos consecutivos?', 'Vettel', 'Schumacher', 'Hamilton', 'Fangio', 2, 5),
(233, '¿Donde se lleva a cabo el GP de Italia?', 'Monza', 'Mugello', 'Imola', 'Misano', 1, 5),
(234, '¿Cuál es el piloto con más podios en una temporada \"F1\"?', 'Senna', 'Schumacher', 'Hamilton', 'Rosberg', 3, 5),
(235, '¿Cuál es la carrera más prestigiosa de IndyCar?', 'Long Beach', 'Indy 500', 'Detroit', 'St. Petersburg', 2, 5),
(236, '¿Constructores con más títulos?', 'McLaren', 'Mercedes', 'Red Bull', 'Ferrari', 4, 5),
(237, '¿Quién es apodado como \"El Profesor\"?', 'Prost', 'Lauda', 'Senna', 'Stewart', 1, 5),
(238, '¿Circuito más largo de WEC?', 'Spa', 'Silverstone', 'Le Mans', 'Nürburgring', 3, 5),
(239, '¿Quién es el campeón 2005 y 2006?', 'Hamilton', 'Räikkönen', 'Alonso', 'Vettel', 3, 5),
(240, '¿Distancia que se recorre en la carrera de Le Mans?', '500 km', '1000 km', '2000 km', 'Variable', 4, 5),
(241, '¿Quién tuvo un accidente en 1976?', 'Senna', 'Lauda', 'Hunt', 'Villeneuve', 2, 5),
(242, '¿Dónde se realiza el GP de Silverstone?', 'Francia', 'Italia', 'Reino Unido', 'Alemania', 3, 5),
(243, '¿Cuál campeón se retiro despues de ganar en 2016?', 'Vettel', 'Rosberg', 'Webber', 'Alonso', 2, 5),
(244, '¿Quién tine el record de vueltas más rápidas?', 'Senna', 'Räikkönen', 'Schumacher', 'Hamilton', 2, 5),
(245, '¿Cuándo se celebro el primer GP de Mónaco?', '1929', '1935', '1950', '1960', 1, 5),
(246, '¿Quién logro 14 poles en la temporada de 1992?', 'Vettel', 'Mansell', 'Senna', 'Hamilton', 2, 5),
(247, '¿Quien es apodado \"El León\"?', 'Prost', 'Mansell', 'Senna', 'Piquet', 2, 5),
(248, '¿Circuito más reciente de Formula 1?', 'Mugello', 'Zandvoort', 'Miami', 'Jeddah', 4, 5),
(249, '¿Cuál fue el primer GP de Canadá en 2007?', 'Hamilton', 'Vettel', 'Kubica', 'Massa', 1, 5),
(250, '¿Cuál fue el piloto más joven en debutar en la F1?', 'Hamilton', 'Vettel', 'Verstappen', 'Alonso', 3, 5),
(251, '¿Cuál es la función principal de los huesos?', 'Regular la temperatura', 'Sostener el cuerpo', 'Hacer que el cuerpo crezca', 'Transportar oxígeno', 2, 6),
(252, '¿Qué hueso es el más largo del cuerpo?', 'Esternón', 'Fémur', 'Cráneo', 'Radio', 2, 6),
(253, '¿Cuántos huesos tiene un adulto?', '150', '206', '300', '100', 2, 6),
(254, '¿Qué hueso conecta el brazo con el tronco?', 'Radio', 'Clavícula', 'Esternón', 'Escápula', 2, 6),
(255, '¿Qué parte del cuerpo protege el cráneo?', 'Los pulmones', 'El cerebro', 'El corazón', 'El estómago', 2, 6),
(256, '¿Qué tipo de articulación se encuentra en el codo?', 'Pivote', 'Bisagra', 'Esférica', 'Deslizante', 2, 6),
(257, '¿Qué tejido cubre y protege el cuerpo?', 'La piel', 'Los músculos', 'El hueso', 'El cartílago', 1, 6),
(258, '¿Cuál es la función principal de los músculos?', 'Regular las hormonas', 'Mover el cuerpo', 'Producir oxígeno', 'Proteger los órganos', 2, 6),
(259, '¿Qué músculo se usa para flexionar el brazo?', 'Cuádriceps', 'Bíceps', 'Trapecio', 'Pectoral', 2, 6),
(260, '¿Qué músculo te ayuda a respirar?', 'Pectoral', 'Diafragma', 'Bíceps', 'Glúteo', 2, 6),
(261, '¿Qué parte del sistema nervioso controla los movimientos?', 'Cerebro', 'Corazón', 'Pulmones', 'Riñones', 1, 6),
(262, '¿Dónde se produce la sangre?', 'Estómago', 'En la médula ósea', 'Corazón', 'Riñones', 2, 6),
(263, '¿Cuál es la función de los riñones?', 'Ayudar a respirar', 'Filtrar desechos y producir orina', 'Transportar oxígeno', 'Regular la temperatura', 2, 6),
(264, '¿Qué parte del ojo nos permite ver?', 'Retina', 'Pupila', 'Iris', 'Glóbulo ocular', 2, 6),
(265, '¿Dónde se encuentran los pulmones?', 'En la cabeza', 'En el tórax', 'En las piernas', 'En el abdomen', 2, 6),
(266, '¿Qué órgano bombea la sangre?', 'Hígado', 'Corazón', 'Riñón', 'Estómago', 2, 6),
(267, '¿Cuál es el hueso que protege el corazón?', 'Esternón', 'Fémur', 'Costillas', 'Escápula', 3, 6),
(268, '¿Qué función tienen los glóbulos rojos?', 'Combatir infecciones', 'Transportar oxígeno', 'Ayudar a la digestión', 'Regular la temperatura', 2, 6),
(269, '¿Dónde se produce la insulina?', 'Tiroides', 'Páncreas', 'Riñones', 'Estómago', 2, 6),
(270, '¿Qué sistema ayuda a digerir los alimentos?', 'Sistema digestivo', 'Sistema nervioso', 'Sistema respiratorio', 'Sistema circulatorio', 1, 6),
(271, '¿Qué hace el corazón?', 'Digestiona la comida', 'Bombea la sangre', 'Respira', 'Ayuda a ver', 2, 6),
(272, '¿Cómo se llama el hueso que está en la parte superior del brazo?', 'Fémur', 'Húmero', 'Radio', 'Esternón', 2, 6),
(273, '¿Qué parte del cuerpo se encarga de mover los alimentos?', 'Corazón', 'Estómago', 'Riñones', 'Cerebro', 2, 6),
(274, '¿Qué tipo de músculo controla los latidos del corazón?', 'Músculo esquelético', 'Músculo cardíaco', 'Músculo liso', 'Músculo estriado', 2, 6),
(275, '¿Qué parte del cuerpo se encuentra en el centro del pecho y bombea sangre?', 'Estómago', 'Corazón', 'Hígado', 'Riñones', 2, 6),
(276, '¿Cuál es el órgano principal del sistema respiratorio?', 'Riñón', 'Pulmones', 'Estómago', 'Hígado', 2, 6),
(277, '¿Cómo se llama la parte del ojo que controla la luz que entra?', 'Retina', 'Pupila', 'Lente', 'Iris', 2, 6),
(278, '¿Qué órgano ayuda a filtrar las toxinas de la sangre?', 'Estómago', 'Hígado', 'Corazón', 'Páncreas', 2, 6),
(279, '¿Qué parte del cuerpo produce las lágrimas?', 'Oído', 'Glándulas lacrimales', 'Piel', 'Riñones', 2, 6),
(280, '¿Qué hace el sistema circulatorio?', 'Ayuda a respirar', 'Transporta la sangre y nutrientes', 'Controla el movimiento', 'Digestiona los alimentos', 2, 6),
(281, '¿Cuántos pulmones tiene el cuerpo humano?', '3', '1', '2', '4', 3, 6),
(282, '¿Cómo se llama la parte que cubre el cerebro?', 'Huesos', 'Cráneo', 'Piel', 'Ligamentos', 2, 6),
(283, '¿Qué parte del cuerpo se encarga de procesar los alimentos?', 'Estómago', 'Riñones', 'Páncreas', 'Corazón', 1, 6),
(284, '¿Cómo se llama la parte del cuerpo que conecta la boca con el estómago?', 'Tráquea', 'Esófago', 'Pulmones', 'Páncreas', 2, 6),
(285, '¿Qué glándula produce las hormonas que regulan el crecimiento?', 'Pituitaria', 'Páncreas', 'Tiroides', 'Glándulas suprarrenales', 1, 6),
(286, '¿Qué parte del sistema nervioso se encuentra en el craneo?', 'Nervios', 'Cerebro', 'Huesos', 'Glóbulos rojos', 2, 6),
(287, '¿Cuál es la función de los glóbulos blancos?', 'Defender contra infecciones', 'Transportar oxígeno', 'Regular la temperatura', 'Formar huesos', 1, 6),
(288, '¿Dónde se encuentra la médula ósea?', 'En el cerebro', 'En los huesos', 'En los riñones', 'En el corazón', 2, 6),
(289, '¿Qué hueso está en la parte inferior de la pierna?', 'Fémur', 'Tibia', 'Húmero', 'Radio', 2, 6),
(290, '¿Qué parte del cuerpo ayuda a producir las hormonas sexuales?', 'Riñones', 'Gónadas (ovarios y testículos)', 'Hígado', 'Pulmones', 2, 6),
(291, '¿Qué parte del cuerpo se llama globo ocular?', 'Oídos', 'Ojos', 'Boca', 'Nariz', 2, 6),
(292, '¿Qué parte del cuerpo se llama pabellón auricular?', 'Boca', 'Oídos', 'Ojos', 'Piel', 2, 6),
(293, '¿Qué hormona produces al caminar?', 'Testosterona', 'Endorfina', 'Cortisol', 'Serotonina', 2, 6),
(294, '¿Qué parte del cuerpo percibe los olores?', 'Oidos', 'Nariz', 'Boca', 'Ojos', 2, 6),
(295, '¿Qué es la epidermis?', 'Un hueso', 'Capa exterior de la piel', 'Un músculo', 'Un órgano', 2, 6),
(296, '¿Qué produce la glándula tiroides?', 'Insulina', 'Hormonas', 'Glóbulos rojos', 'Bilis', 2, 6),
(297, '¿Cómo se llama la parte del ojo que da color?', 'Pupila', 'Iris', 'Retina', 'Lente', 2, 6),
(298, '¿Para que nos ayuda la lengua?', 'Masticar', 'Percibir el sabor', 'Pasar la comida', 'Ninguna de las anteriores', 2, 6),
(299, '¿Qué parte del cuerpo regula el sueño?', 'Corazón', 'Cerebro', 'Riñones', 'Hígado', 2, 6),
(300, '¿Qué hormona ayuda al crecimiennto del pelo ', 'Dihidrotestosterona', 'Testosterona', 'Cortisol', 'Progesterona', 1, 6),
(301, '¿Qué planeta es conocido como el \"Planeta Rojo\"?', 'Venus', 'Marte', 'Júpiter', 'Saturno', 2, 7),
(302, '¿Cuál es el proceso por el cual las plantas producen su alimento?', 'Digestión', 'Fotosíntesis', 'Respiración', 'Fermentación', 2, 7),
(303, '¿Cuál es el estado del agua a 0 grados Celsius?', 'Vapor', 'Líquido', 'Hielo', 'Nieve', 3, 7),
(304, '¿Qué parte de la planta absorbe agua y nutrientes del suelo?', 'Hoja', 'Tallo', 'Raíz', 'Flor', 3, 7),
(305, '¿Cuál es el órgano del cuerpo humano que bombea sangre?', 'Estómago', 'Pulmón', 'Corazón', 'Hígado', 3, 7),
(306, '¿Qué tipo de animal es un pez?', 'Mamífero', 'Anfibio', 'Reptil', 'Acuático', 4, 7),
(307, '¿Cuál es la principal fuente de energía de la Tierra?', 'El viento', 'El sol', 'El agua', 'La geotermia', 2, 7),
(308, '¿Qué gas es esencial para la respiración de los humanos?', 'Dióxido de carbono', 'Oxígeno', 'Nitrógeno', 'Helio', 2, 7),
(309, '¿Qué parte del cuerpo humano detecta el sabor?', 'Nariz', 'Ojos', 'Lengua', 'Piel', 3, 7),
(310, '¿Qué tipo de roca se forma a partir de la lava?', 'Sedimentaria', 'Metamórfica', 'Ígnea', 'Granita', 3, 7),
(311, '¿Cuál es el ciclo que describe cómo el agua se mueve en la naturaleza?', 'Ciclo del carbono', 'Ciclo del nitrógeno', 'Ciclo del agua', 'Ciclo de la energía', 3, 7),
(312, '¿Qué es la biodiversidad?', 'Cantidad de agua en un ecosistema', 'La variedad de especies', 'La altura de las plantas', 'La cantidad de luz solar', 2, 7),
(313, '¿Qué tipo de energía se obtiene del sol?', 'Energía eléctrica', 'Energía térmica', 'Energía solar', 'Energía química', 3, 7),
(314, '¿Qué elemento químico tiene el símbolo \"H\"?', 'Helio', 'Hidrógeno', 'Mercurio', 'Hidróxido', 2, 7),
(315, '¿Cuál es el principal gas de efecto invernadero?', 'Oxígeno', 'Dióxido de carbono', 'Nitrógeno', 'Helio', 2, 7),
(316, '¿Cuál es el proceso de cambio de un líquido a un gas?', 'Condensación', 'Evaporación', 'Solidificación', 'Sublimación', 2, 7),
(317, '¿Qué tipo de organismo produce su propio alimento?', 'Consumidor', 'Descomponedor', 'Productor', 'Carnívoro', 3, 7),
(318, '¿Cuál es el órgano responsable de la visión en los humanos?', 'Oídos', 'Ojo', 'Nariz', 'Lengua', 2, 7),
(319, '¿Qué tipo de célula se encuentra en las plantas?', 'Células procariontes', 'Células eucariontes', 'Células animales', 'Células sanguíneas', 2, 7),
(320, '¿Qué tipo de energía se obtiene de los combustibles fósiles?', 'Energía solar', 'Energía eólica', 'Energía térmica', 'Energía química', 4, 7),
(321, '¿Qué fenómeno natural se produce cuando la temperatura de la atmósfera aumenta?', 'Lluvia', 'Tormenta', 'Calentamiento global', 'Nieve', 3, 7),
(322, '¿Cuál es el órgano del cuerpo humano que procesa los alimentos?', 'Estómago', 'Corazón', 'Pulmón', 'Riñón', 1, 7),
(323, '¿Qué parte de la planta produce los pétalos?', 'Raíz', 'Tallo', 'Hoja', 'Flor', 4, 7),
(324, '¿Qué parte de un ecosistema incluye a los organismos vivos?', 'Biotopo', 'Biocenosis', 'Bioma', 'Hábitat', 2, 7),
(325, '¿Qué tipo de animal tiene sangre fría?', 'Mamífero', 'Ave', 'Reptil', 'Pez', 3, 7),
(326, '¿Qué gas producen las plantas durante la fotosíntesis?', 'Dióxido de carbono', 'Oxígeno', 'Nitrógeno', 'Helio', 2, 7),
(327, '¿Cuál es la función de las raíces de una planta?', 'Producir flores', 'Sostener la planta', 'Absorber agua y nutrientes', 'Hacer fotosíntesis', 3, 7),
(328, '¿Qué parte del cuerpo humano ayuda a regular la temperatura?', 'Corazón', 'Piel', 'Pulmón', 'Hígado', 2, 7),
(329, '¿Qué tipo de animal es un sapo?', 'Reptil', 'Anfibio', 'Mamífero', 'Insecto', 2, 7),
(330, '¿Cuál es el sistema que controla las funciones del cuerpo?', 'Sistema circulatorio', 'Sistema nervioso', 'Sistema digestivo', 'Sistema respiratorio', 2, 7),
(331, '¿Qué tipo de energía se obtiene del viento?', 'Energía solar', 'Energía eólica', 'Energía térmica', 'Energía química', 2, 7),
(332, '¿Qué mineral es esencial para la formación de huesos?', 'Hierro', 'Calcio', 'Magnesio', 'Potasio', 2, 7),
(333, '¿Qué es la fotosíntesis?', 'Proceso de reproducción', 'Proceso de obtención de energía', 'Proceso de respiración', 'Proceso de descomposición', 2, 7),
(334, '¿Qué tipo de animal es un delfín?', 'Pez', 'Mamífero', 'Reptil', 'Anfibio', 2, 7),
(335, '¿Qué gas es un contaminante en el aire?', 'Oxígeno', 'Dióxido de carbono', 'Nitrógeno', 'Helio', 2, 7),
(336, '¿Qué tipo de planta no tiene flores?', 'Coníferas', 'Herbáceas', 'Frutales', 'Tropicales', 1, 7),
(337, '¿Qué es un ecosistema?', 'Conjunto de especies', 'Lugar donde viven humanos', 'Comunidad de organismos', 'Un tipo de clima', 3, 7),
(338, '¿Qué elemento químico tiene el símbolo \"O\"?', 'Oxígeno', 'Oro', 'Osmio', 'Óxido', 1, 7),
(339, '¿Qué tipo de energía se genera al quemar madera?', 'Energía solar', 'Energía térmica', 'Energía eléctrica', 'Energía mecánica', 2, 7),
(340, '¿Qué nombre recibe el proceso mediante el cual el agua subterránea regresa a la superficie?', 'Evaporación', 'Emanacion por Manantial', 'Condensación', 'Infiltración', 2, 7),
(341, '¿Cuál es el órgano sensorial encargado del equilibrio en el cuerpo humano?', 'Ojos', 'Oídos', 'Nariz', 'Piel', 2, 7),
(342, '¿Cuál es el tipo de roca formada por la compactación de sedimentos?', 'Ígnea', 'Metamórfica', 'Sedimentaria', 'Granita', 3, 7),
(343, '¿Qué parte de la planta realiza la fotosíntesis?', 'Raíz', 'Hoja', 'Tallo', 'Flor', 2, 7),
(344, '¿Qué es un hábitat?', 'Un tipo de animal', 'Lugar donde vive una especie', 'Tipo de planta', 'Un fenómeno natural', 2, 7),
(345, '¿Cuál es el gas que inhalamos y que es esencial para vivir?', 'Dióxido de carbono', 'Oxígeno', 'Nitrógeno', 'Argón', 2, 7),
(346, '¿Qué tipo de energía se obtiene de la biomasa?', 'Energía solar', 'Energía térmica', 'Energía química', 'Energía eléctrica', 3, 7),
(347, '¿Cuál es el ciclo que describe el movimiento del carbono en la naturaleza?', 'Ciclo del agua', 'Ciclo del nitrógeno', 'Ciclo del carbono', 'Ciclo de la energía', 3, 7),
(348, '¿Qué parte de una célula contiene el material genético?', 'Citoplasma', 'Núcleo', 'Membrana celular', 'Ribosomas', 2, 7),
(349, '¿Qué tipo de energía se produce al mover una turbina?', 'Energía eléctrica', 'Energía térmica', 'Energía mecánica', 'Energía solar', 1, 7),
(350, '¿Qué tipo de energía utiliza un panel solar para generar electricidad?', 'Energía térmica', 'Energía solar', 'Energía cinética', 'Energía química', 2, 7),
(351, '¿Cuántos puntos vale un gol en el fútbol?', '1', '2', '3', '4', 1, 8),
(352, '¿Qué jugador de tenis tiene más títulos de Grand Slam en la historia?', 'Roger Federer', 'Novak Djokovic', 'Rafael Nadal', 'Pete Sampras', 2, 8),
(353, '¿Qué deporte se practica en un velódromo?', 'Atletismo', 'Natación', 'Ciclismo', 'Triatlón', 3, 8),
(354, '¿En qué deporte se utiliza el término \"touchdown\"?', 'Baloncesto', 'Fútbol Americano', 'Rugby', 'Beisbol', 2, 8),
(355, '¿Qué es un \"strike\" en el béisbol?', 'Un lanzamiento malo', 'Un jonrón', 'Un lanzamiento acertado', 'Una falta', 3, 8),
(356, '¿Cuál es el país con más medallas olímpicas en la historia?', 'Rusia', 'Estados Unidos', 'China', 'Reino Unido', 2, 8),
(357, '¿Qué significa el término \"offside\" en el fútbol?', 'Un gol anulado', 'Un jugador adelantado', 'Una falta técnica', 'Una expulsión', 2, 8),
(358, '¿Qué jugador de fútbol es conocido como \"El Fenómeno\"?', 'Cristiano Ronaldo', 'Lionel Messi', 'Ronaldo Nazário', 'Ronaldinho', 3, 8),
(359, '¿Qué deporte tiene un campeonato llamado \"La Liga\"?', 'Fútbol', 'Baloncesto', 'Beisbol', 'Rugby', 1, 8),
(360, '¿Qué país ganó los Juegos Olímpicos de Invierno 2022?', 'Noruega', 'Estados Unidos', 'Alemania', 'Canadá', 1, 8),
(361, '¿Cuántos sets se necesitan ganar para vencer un partido de tenis en un Grand Slam?', '3', '4', '5', '2', 3, 8),
(362, '¿En qué año se celebró la primera Copa del Mundo de fútbol?', '1928', '1930', '1934', '1942', 2, 8),
(363, '¿Qué deporte incluye una prueba llamada \"media maratón\"?', 'Atletismo', 'Ciclismo', 'Natación', 'Triatlón', 1, 8),
(364, '¿Qué significa la tarjeta roja en el fútbol?', 'Advertencia', 'Expulsión', 'Tiro libre', 'Cambio de jugador', 2, 8),
(365, '¿Qué país ha ganado más Copas del Mundo de Rugby?', 'Nueva Zelanda', 'Inglaterra', 'Australia', 'Sudáfrica', 1, 8),
(366, '¿Cuántos tiempos tiene un partido de baloncesto profesional?', '2', '4', '3', '5', 2, 8),
(367, '¿Qué es un \"triple\" en el baloncesto?', 'Un pase', 'Lanzamiento de tres puntos', 'Un rebote', 'Una asistencia', 2, 8),
(368, '¿Qué deporte se juega en un campo de hielo?', 'Hockey sobre hielo', 'Patinaje', 'Esquí', 'Curling', 1, 8),
(369, '¿Cuál es el evento más importante del automovilismo?', 'Indy 500', 'Le Mans', 'Fórmula 1', 'Nascar', 3, 8),
(370, '¿Qué instrumento se utiliza en el golf?', 'Raqueta', 'Palo', 'Bate', 'Balón', 2, 8),
(371, '¿Qué deporte tiene el \"Super Bowl\"?', 'Fútbol americano', 'Béisbol', 'Baloncesto', 'Hockey', 1, 8),
(372, '¿Qué deporte incluye el término \"knockout\"?', 'Boxeo', 'Lucha libre', 'Artes marciales', 'Karate', 1, 8),
(373, '¿Cuál es el deporte nacional de Japón?', 'Sumo', 'Karate', 'Béisbol', 'Judo', 1, 8),
(374, '¿Qué deporte tiene el \"Seis Naciones\"?', 'Fútbol', 'Rugby', 'Cricket', 'Hockey', 2, 8),
(375, '¿Qué jugador de fútbol ha ganado más Balones de Oro?', 'Cristiano Ronaldo', 'Lionel Messi', 'Zinedine Zidane', 'Johan Cruyff', 2, 8),
(376, '¿Qué deporte se juega con un volante?', 'Bádminton', 'Tenis', 'Ping-pong', 'Squash', 1, 8),
(377, '¿Qué deporte tiene un \"green\"?', 'Hockey', 'Cricket', 'Golf', 'Fútbol', 3, 8),
(378, '¿Qué jugador es conocido como \"The Great One\" en el hockey?', 'Wayne Gretzky', 'Sidney Crosby', 'Mario Lemieux', 'Gordie Howe', 1, 8),
(379, '¿Qué deporte tiene el torneo de \"Wimbledon\"?', 'Tenis', 'Cricket', 'Golf', 'Atletismo', 1, 8),
(380, '¿Qué deporte tiene la regla del \"tiempo muerto\"?', 'Baloncesto', 'Fútbol', 'Rugby', 'Hockey', 1, 8),
(381, '¿Qué deporte tiene la figura de un \"líbero\"?', 'Fútbol', 'Voleibol', 'Baloncesto', 'Beisbol', 2, 8),
(382, '¿Qué deporte incluye \"salto con pértiga\"?', 'Atletismo', 'Natación', 'Gimnasia', 'Rugby', 1, 8),
(383, '¿Qué deporte tiene \"Grandes Ligas\"?', 'Fútbol', 'Béisbol', 'Baloncesto', 'Hockey', 2, 8),
(384, '¿Qué significa un empate en ajedrez?', 'Victoria', 'Tablas', 'Revancha', 'Desempate', 2, 8),
(385, '¿Qué jugador tiene el récord de más goles en un año?', 'Pelé', 'Lionel Messi', 'Cristiano Ronaldo', 'Gerd Müller', 2, 8),
(386, '¿Qué deporte incluye el término \"off the wall\"?', 'Beisbol', 'Cricket', 'Squash', 'Rugby', 3, 8),
(387, '¿Qué deporte tiene el torneo \"Masters\"?', 'Golf', 'Tenis', 'Hockey', 'Ciclismo', 1, 8),
(388, '¿Qué país organizó la Copa Mundial de Fútbol 2022?', 'Brasil', 'Rusia', 'Qatar', 'Alemania', 3, 8),
(389, '¿Qué deporte tiene la posición de \"mariscal de campo\"?', 'Fútbol americano', 'Rugby', 'Baloncesto', 'Hockey', 1, 8),
(390, '¿Qué deporte utiliza el término \"tie break\"?', 'Tenis', 'Fútbol', 'Baloncesto', 'Voleibol', 1, 8),
(391, '¿Qué país es conocido como la cuna del fútbol?', 'Inglaterra', 'Brasil', 'Italia', 'Alemania', 1, 8),
(392, '¿Cuántos jugadores forman un equipo de voleibol en cancha?', '4', '5', '6', '7', 3, 8),
(393, '¿Qué deporte tiene el evento conocido como \"Ironman\"?', 'Natación', 'Atletismo', 'Triatlón', 'Ciclismo', 3, 8),
(394, '¿Qué significa un \"ace\" en el tenis?', 'Un saque ganador', 'Un error no forzado', 'Un golpe a la red', 'Un set ganado', 1, 8),
(395, '¿Qué país ganó el primer Mundial de fútbol?', 'Brasil', 'Uruguay', 'Argentina', 'Italia', 2, 8),
(396, '¿Qué deporte tiene una jugada llamada \"home run\"?', 'Hockey', 'Béisbol', 'Baloncesto', 'Fútbol', 2, 8),
(397, '¿Qué deporte tiene el término \"checkmate\"?', 'Cricket', 'Golf', 'Ajedrez', 'Esgrima', 3, 8),
(398, '¿Qué jugador de baloncesto es conocido como \"Air Jordan\"?', 'LeBron James', 'Kobe Bryant', 'Michael Jordan', 'Shaquille O’Neal', 3, 8),
(399, '¿Qué deporte tiene una posición llamada \"portero\"?', 'Fútbol', 'Hockey', 'Waterpolo', 'Todas las anteriores', 4, 8),
(400, '¿Qué deporte incluye la rutina de \"anillas\"?', 'Atletismo', 'Natación', 'Gimnasia artística', 'Ciclismo', 3, 8),
(401, '¿Cuál es el planeta más cercano al Sol?', 'Venus', 'Marte', 'Mercurio', 'Júpiter', 3, 9),
(402, '¿Qué planeta es conocido como el \"planeta rojo\"?', 'Venus', 'Marte', 'Saturno', 'Urano', 2, 9),
(403, '¿Qué es una supernova?', 'Nuevo planeta', 'Explosión de una estrella', 'Tipo de galaxia', 'Agujero negro', 2, 9),
(404, '¿Cuál es la galaxia más cercana a la Vía Láctea?', 'Andrómeda', 'Sombrero', 'Triángulo', 'Reloj de Arena', 1, 9),
(405, '¿Cuál es el satélite natural de la Tierra?', 'Fobos', 'Titán', 'Luna', 'Europa', 3, 9),
(406, '¿Qué fenómeno ocurre cuando la Luna se interpone entre la Tierra y el Sol?', 'Eclipse lunar', 'Eclipse solar', 'Equinoccio', 'Solsticio', 2, 9),
(407, '¿Qué planeta tiene los anillos más destacados?', 'Júpiter', 'Saturno', 'Urano', 'Neptuno', 2, 9),
(408, '¿Cuál es la estrella más cercana a la Tierra?', 'Próxima Centauri', 'Alpha Centauri', 'Betelgeuse', 'Sirius', 1, 9),
(409, '¿Qué es una nebulosa?', 'Tipo de estrella', 'Nube de gas y polvo', 'Planeta en formación', 'Agujero negro', 2, 9),
(410, '¿Cuál es el planeta más grande del sistema solar?', 'Tierra', 'Saturno', 'Júpiter', 'Neptuno', 3, 9),
(411, '¿Qué es un agujero negro?', 'Planeta enano', 'Lugar de gran gravedad', 'Estrella en explosión', 'Tipo de galaxia', 2, 9),
(412, '¿Qué planeta tiene la mayor cantidad de lunas?', 'Marte', 'Júpiter', 'Saturno', 'Neptuno', 2, 9),
(413, '¿Cuál es el nombre del telescopio espacial lanzado en 1990?', 'Hubble', 'Kepler', 'Chandra', 'Spitzer', 1, 9),
(414, '¿Qué tipo de estrella es el Sol?', 'Enana roja', 'Gigante azul', 'Estrella amarilla', 'Estrella blanca', 3, 9),
(415, '¿Qué es la Vía Láctea?', 'Una estrella', 'Sistema planetario', 'Galaxia', 'Agujero negro', 3, 9),
(416, '¿Cuántos planetas hay en el sistema solar?', '8', '9', '10', '7', 1, 9),
(417, '¿Cuál es el satélite natural de Marte?', 'Deimos y Fobos', 'Europa', 'Titán', 'Miranda', 1, 9),
(418, '¿Qué fenómeno se produce cuando la Tierra se interpone entre el Sol y la Luna?', 'Eclipse lunar', 'Eclipse solar', 'Equinoccio', 'Solsticio', 1, 9),
(419, '¿Cuál es el nombre del planeta enano más famoso?', 'Ceres', 'Plutón', 'Eris', 'Haumea', 2, 9),
(420, '¿Qué es la constelación de Orión?', 'Estrella', 'Figura de estrellas', 'Planeta', 'Galaxia', 2, 9),
(421, '¿Qué gas compone mayormente la atmósfera de Júpiter?', 'Oxígeno', 'Hidrógeno', 'Helio', 'CO2', 2, 9),
(422, '¿Qué es la rotación de un planeta?', 'Movimiento alrededor del Sol', 'Giro sobre su eje', 'Movimiento hacia el espacio', 'Formación', 2, 9),
(423, '¿Qué es un meteoro?', 'Tipo de estrella', 'Objeto que entra a la atmósfera', 'Satélite', 'Agujero negro', 2, 9),
(424, '¿Qué planeta es conocido por sus vientos y tormentas?', 'Venus', 'Júpiter', 'Marte', 'Saturno', 2, 9),
(425, '¿Qué tipo de eclipse ocurre cuando la Tierra proyecta su sombra sobre la Luna?', 'Eclipse solar', 'Eclipse lunar', 'Eclipse parcial', 'Eclipse total', 2, 9),
(426, '¿Qué es la \"zona habitable\"?', 'Lugar sin estrellas', 'Región que permite vida', 'Planeta enano', 'Agujero negro', 2, 9),
(427, '¿Cuál es la estrella más brillante en el cielo nocturno?', 'Polaris', 'Sirius', 'Betelgeuse', 'Vega', 2, 9),
(428, '¿Qué planetas tienen anillos?', 'Júpiter y Marte', 'Saturno, Júpiter y Urano', 'Mercurio y Venus', 'Tierra y Marte', 2, 9),
(429, '¿Qué es un exoplaneta?', 'Planeta en el sistema solar', 'Planeta fuera del sistema', 'Satélite natural', 'Asteroide', 2, 9),
(430, '¿Cuál es la temperatura en la superficie del Sol?', '5,500 °C', '10,000 °C', '15,000 °C', '1,000 °C', 1, 9),
(431, '¿Qué luna de Júpiter tiene un océano subterráneo?', 'Europa', 'Ganimedes', 'Calisto', 'Io', 1, 9),
(432, '¿Qué es el Big Bang?', 'Tipo de estrella', 'Teoría de creación del universo', 'Agujero negro', 'Planeta', 2, 9),
(433, '¿Qué es un cometa?', 'Planeta', 'Cuerpo de hielo y polvo', 'Estrella en explosión', 'Agujero negro', 2, 9),
(434, '¿Qué planeta tiene la mayor inclinación axial?', 'Júpiter', 'Saturno', 'Urano', 'Marte', 3, 9),
(435, '¿Qué es la gravedad?', 'Tipo de energía', 'Fuerza de atracción', 'Tipo de movimiento', 'Forma de luz', 2, 9),
(436, '¿Cuál es el planeta más frío del sistema solar?', 'Mercurio', 'Plutón', 'Neptuno', 'Urano', 4, 9),
(437, '¿Qué se encuentra en el centro de nuestra galaxia?', 'Estrella', 'Agujero negro supermasivo', 'Planeta', 'Cúmulo estelar', 2, 9),
(438, '¿Qué es la luz zodiacal?', 'Estrella', 'Fenómeno de luz en el cielo', 'Tipo de galaxia', 'Cometa', 2, 9),
(439, '¿Cuál es el elemento más abundante en el universo?', 'Helio', 'Oxígeno', 'Hidrógeno', 'Carbono', 3, 9),
(440, '¿Qué planeta tiene un día más largo que su año?', 'Mercurio', 'Venus', 'Marte', 'Júpiter', 2, 9),
(441, '¿Qué es la precesión?', 'Movimiento alrededor del Sol', 'Cambio de orientación y rotación', 'Formación de estrellas', 'Tipo de eclipse', 2, 9),
(442, '¿Qué es la \"hora estelar\"?', 'Tipo de hora', 'Posición de estrellas', 'Tiempo de rotación terrestre', 'Fenómeno meteorológico', 3, 9),
(443, '¿Qué tipo de galaxia es la Vía Láctea?', 'Elíptica', 'Espiral', 'Irregular', 'Lenticular', 2, 9),
(444, '¿Qué es el Solsticio?', 'Fenómeno astronómico', 'Mayor o menor altura del Sol', 'Tipo de eclipse', 'Periodo de tiempo', 2, 9),
(445, '¿Cuál es el nombre de la sonda que llegó a Plutón en 2015?', 'Voyager 1', 'New Horizons', 'Cassini', 'Curiosity', 2, 9),
(446, '¿Qué es la materia oscura?', 'Tipo de estrella', 'Materia sin emisión de luz', 'Agujero negro', 'Tipo de planeta', 2, 9),
(447, '¿Qué planeta tiene un gran manchón rojo?', 'Saturno', 'Neptuno', 'Júpiter', 'Urano', 3, 9),
(448, '¿Cuál es la principal fuente de luz para la Tierra?', 'Luna', 'Estrellas', 'Sol', 'Planetas', 3, 9),
(449, '¿Qué es la expansión del universo?', 'Crecimiento de un planeta', 'Universo alejándose y expandiéndose', 'Formación de planetas', 'Fenómeno estacional', 2, 9),
(450, '¿Que son las auroras boreales?', 'Fenomenos meteorologicos', 'Luces creando particulas solares', 'Nubes de gas en el espacio', 'Estrellas fugaces', 2, 9),
(451, '¿Quién es el rey de los dioses en la mitología griega?', 'Poseidón', 'Zeus', 'Hades', 'Apolo', 2, 10),
(452, '¿Cuál es la diosa de la sabiduría y la guerra?', 'Afrodita', 'Artemisa', 'Atenea', 'Deméter', 3, 10);
INSERT INTO `pregunta` (`id_pregunta`, `pregunta`, `opcion_1`, `opcion_2`, `opcion_3`, `opcion_4`, `correcto`, `id_categoria`) VALUES
(453, '¿Quién es el dios del mar?', 'Hades', 'Ares', 'Hermes', 'Poseidón', 4, 10),
(454, '¿Qué héroe es famoso por sus doce trabajos?', 'Teseo', 'Perseo', 'Heracles', 'Aquiles', 3, 10),
(455, '¿Quién es la diosa del amor y la belleza?', 'Hera', 'Atenea', 'Afrodita', 'Artemisa', 3, 10),
(456, '¿Qué héroe mató a Medusa?', 'Teseo', 'Perseo', 'Heracles', 'Aquiles', 2, 10),
(457, '¿Quién es el dios de los muertos?', 'Hades', 'Hermes', 'Apolo', 'Dionisio', 1, 10),
(458, '¿Cuál es el nombre del caballo alado de la mitología griega?', 'Cerbero', 'Pegaso', 'Arión', 'Bucéfalo', 2, 10),
(459, '¿Qué criatura mitológica tenía cuerpo de hombre y cabeza de toro?', 'Minotauro', 'Cíclope', 'Sirena', 'Quimera', 1, 10),
(460, '¿Quién es la madre de Zeus?', 'Hera', 'Deméter', 'Rea', 'Gea', 3, 10),
(461, '¿Cuál es el nombre de la diosa de la caza?', 'Atenea', 'Deméter', 'Artemisa', 'Hécate', 3, 10),
(462, '¿Qué héroe fue conocido por su talón vulnerable?', 'Heracles', 'Aquiles', 'Odiseo', 'Perseo', 2, 10),
(463, '¿Qué monstruo tenía tres cabezas y guardaba la entrada al inframundo?', 'Hidra', 'Cerbero', 'Quimera', 'Cíclope', 2, 10),
(464, '¿Quién es el dios del vino y la festividad?', 'Apolo', 'Dionisio', 'Hermes', 'Ares', 2, 10),
(465, '¿Cuál es el nombre de la ciudad donde se encontraba el templo de Apolo?', 'Atenas', 'Delfos', 'Esparta', 'Corinto', 2, 10),
(466, '¿Qué mujer fue transformada en una vaca por Zeus?', 'Europa', 'Io', 'Leda', 'Sémele', 2, 10),
(467, '¿Quién es el dios del comercio y mensajero de los dioses?', 'Hermes', 'Apolo', 'Ares', 'Dionisio', 1, 10),
(468, '¿Quién es el héroe que realizó un viaje para recuperar a su esposa?', 'Teseo', 'Perseo', 'Odiseo', 'Heracles', 3, 10),
(469, '¿Qué criatura mitológica tenía el cuerpo de una mujer y la cola de un pez?', 'Sirena', 'Nereida', 'Melusina', 'Gorgona', 1, 10),
(470, '¿Quién era el dios del fuego y la forja?', 'Ares', 'Hefesto', 'Apolo', 'Dionisio', 2, 10),
(471, '¿Quién es el rey de la ciudad de Micenas conocido por su gran poder?', 'Agamenón', 'Menelao', 'Odiseo', 'Teseo', 1, 10),
(472, '¿Qué héroe fue conocido por vencer a la Hidra de Lerna?', 'Perseo', 'Teseo', 'Heracles', 'Aquiles', 3, 10),
(473, '¿Cuál es el nombre de la madre de los dioses?', 'Hera', 'Deméter', 'Rea', 'Gaia', 4, 10),
(474, '¿Qué dios es conocido por llevar el tridente?', 'Zeus', 'Poseidón', 'Ares', 'Hermes', 2, 10),
(475, '¿Qué personaje mitológico se convirtió en piedra por mirar a Medusa?', 'Perseo', 'Teseo', 'Heracles', 'Polidectes', 4, 10),
(476, '¿Cuál es la diosa de la cosecha?', 'Atenea', 'Deméter', 'Hera', 'Afrodita', 2, 10),
(477, '¿Qué héroe luchó contra los troyanos y es conocido por su ira?', 'Agamenón', 'Aquiles', 'Odiseo', 'Héctor', 2, 10),
(478, '¿Quién fue el rey que desató la guerra de Troya al llevarse a Helena?', 'Menelao', 'Agamenón', 'París', 'Odiseo', 3, 10),
(479, '¿Qué figura mitológica fue creada a partir de arcilla por Hefesto?', 'Pandora', 'Atenea', 'Medusa', 'Afrodita', 1, 10),
(480, '¿Quién es el dios de la guerra?', 'Ares', 'Hermes', 'Hades', 'Apolo', 1, 10),
(481, '¿Qué héroe es conocido por su astucia y por idear el caballo de Troya?', 'Aquiles', 'Odiseo', 'Perseo', 'Teseo', 2, 10),
(482, '¿Quién es el dios de la luz y la profecía?', 'Hermes', 'Apolo', 'Dionisio', 'Zeus', 2, 10),
(483, '¿Qué monstruo tenía un cuerpo de león, cabeza de cabra y cola de serpiente?', 'Hidra', 'Quimera', 'Cíclope', 'Minotauro', 2, 10),
(484, '¿Qué dios es conocido por ser el dios de la música y la poesía?', 'Hermes', 'Ares', 'Apolo', 'Dionisio', 3, 10),
(485, '¿Quién es la reina de los dioses y esposa de Zeus?', 'Atenea', 'Deméter', 'Hera', 'Artemisa', 3, 10),
(486, '¿Quién fue el primer hombre creado según la mitología griega?', 'Prometeo', 'Epimeteo', 'Adán', 'Orfeo', 1, 10),
(487, '¿Qué héroe paso por pruebas para recuperar su lugar en el Olimpo?', 'Teseo', 'Perseo', 'Heracles', 'Aquiles', 3, 10),
(488, '¿Cuál es el nombre de la diosa de la venganza?', 'Némesis', 'Atenea', 'Hera', 'Afrodita', 1, 10),
(489, '¿Quién fue la madre de Apolo y Artemisa?', 'Leto', 'Deméter', 'Hera', 'Rea', 1, 10),
(490, '¿Qué dios es conocido como el dios de los sueños?', 'Morfeo', 'Hipnos', 'Tánatos', 'Eros', 2, 10),
(491, '¿Qué héroe luchó contra el monstruo marino Ceto?', 'Teseo', 'Perseo', 'Heracles', 'Aquiles', 2, 10),
(492, '¿Quién es el dios del inframundo que rapta a Perséfone?', 'Zeus', 'Hades', 'Hermes', 'Apolo', 2, 10),
(493, '¿Qué criatura mítica tenía un cuerpo de hombre y patas de cabra?', 'Sátiro', 'Cíclope', 'Minotauro', 'Fauno', 1, 10),
(494, '¿Quién es el rey de Esparta en la guerra de Troya?', 'Agamenón', 'Menelao', 'Odiseo', 'Aquiles', 2, 10),
(495, '¿Qué diosa es conocida por su astucia y habilidad en la guerra?', 'Hera', 'Atenea', 'Artemisa', 'Deméter', 2, 10),
(496, '¿Quién fue el primer héroe en ir a los infiernos y regresar?', 'Heracles', 'Orfeo', 'Teseo', 'Odiseo', 2, 10),
(497, '¿Qué monstruo tenía un solo ojo en la frente?', 'Quimera', 'Cíclope', 'Hidra', 'Minotauro', 2, 10),
(498, '¿Cuál es el nombre del dios del tiempo?', 'Cronos', 'Eros', 'Hades', 'Poseidón', 1, 10),
(499, '¿Quién es conocido por haber creado la primera mujer?', 'Zeus', 'Prometeo', 'Hefesto', 'Apolo', 3, 10),
(500, '¿Qué criatura mitológica cambiar de forma y es conocida por su encanto?', 'Sirena', 'Hidra', 'Esfinge', 'Nereida', 3, 10);

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
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id_pregunta`);

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
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

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
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

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
