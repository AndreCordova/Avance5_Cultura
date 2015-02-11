-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2015 a las 04:35:52
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cultura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etnias`
--

CREATE TABLE IF NOT EXISTS `etnias` (
  `nombre` text NOT NULL,
  `habitantes` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `etnias`
--

INSERT INTO `etnias` (`nombre`, `habitantes`) VALUES
('Waranka', 68),
('Cañaris', 150),
('Panzaleo', 9),
('Awá', 3082),
('Chachi', 8000),
('Natabuela', 10155),
('Caranquis', 6360),
('Kichwa Otavalo', 65000),
('Saraguros', 3000),
('Shuar', 110000),
('Secha Nua', 150),
('Huaorani', 3082),
('Tagaeri', 215),
('Taromenane', 560),
('Achuar ', 5440),
('Canelo', 71000),
('Shiwiar', 697),
('Zápara', 225),
('Kayambi', 120000),
('Tsáchilas', 2640),
('Cofán', 800),
('Siona', 360),
('Secoya', 380),
('Chibuleo', 12000),
('Salasaka', 320);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fiestas`
--

CREATE TABLE IF NOT EXISTS `fiestas` (
  `nombre` varchar(50) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fiestas`
--

INSERT INTO `fiestas` (`nombre`, `fecha`, `descripcion`) VALUES
('Diablada de Píllaro', '', 'La tradición de la “diablada” exige que quien se disfrazó una vez tendrá que bailar los doce años siguientes, sino quiere pasar las da Caín. Por el contrario cumplir con el rito trae buena fortuna.'),
('Fiesta de las Flores y las Frutas', '', 'Los regalos de frutas deliciosas y bellas flores, se celebran en Ambato durante un mes antes de la fiesta principal, que incluye desfiles, espectáculos, fuegos artificiales y un desfile de belleza.'),
('Procesor del Señor del Buen Suceso', '', 'Sus devotos son principalmente riobambeños.'),
('Día de la Región Amazónica', '', 'En honor al descubrimiento del río Amazonas y se celebra en toda la región, con bailes y chicha, que es una bebida alcohólica tradicional.'),
('Festival de la cosecha', '', 'Se celebra en Tarqui, cerca de Cuenca. Las fiestas incluyen la elección de la Sara Ñusta (Reina del maíz), danzas, y bandas locales.'),
('La mama negra', '', 'En la ciudad de Latacunga hay un desfile que culmina con la aparición de la Mama Negra (Madre Negra) que es en realidad un hombre vestido de mujer, pintado de negro y llevando muñecos, para representar a sus hijos.'),
('Rodeo montubio', '', 'Una celebración de la herencia española en Ecuador. Se celebra en conmemoración al descubrimiento de América, en este día. La celebración es especialmente importante en las provincias de Guayas y Los Ríos, donde el rodeo, presenta a hombres y mujeres, demostrando sus habilidades a caballo.'),
('Romería de la Virgen del Cisne', '', 'La Romería de la Virgen del Cisne se realiza cada 15 de Agosto, cuando la madre de los Lojanos emprende un largo periplo desde su santuario hasta la catedral de la capital provincial. Después de una gran festividad religiosa, los fieles, en número que sobrepasa los 400.000, emprenden el camino.'),
('Virgen del Quinche.', '', 'Todos los años miles de ecuatorianos participan en la fiesta de la Virgen del Quinche, el sábado más cercano a la fecha en que este acontecimiento tiene lugar en Ecuador.'),
('Fundación de Quito', '', 'En la memoria colectiva, la fundación de Quito se remite a los tiempos legendarios de Quitumbe y sus primeros habitantes los Quitus, que más tarde se fusionaron con los Caras. La historia de Quito no empieza ni termina con la llegada de los conquistadores españoles, cuya presencia, a no dudarlo, constituye un importante hito en el curso de la milenaria trayectoria vivida por nuestro pueblo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastronomia`
--

CREATE TABLE IF NOT EXISTS `gastronomia` (
  `nombre` varchar(50) NOT NULL,
  `ingredientes` text NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gastronomia`
--

INSERT INTO `gastronomia` (`nombre`, `ingredientes`, `descripcion`) VALUES
('Tigrillo', 'Plátano cocido, huevo y queso.', 'El Tigrillo es un plato típico originario de Zaruma, Provincia de El Oro, se lo sirve caliente acompañado de café filtrado, por lo general se consume en el desayuno o en el café de la tarde.'),
('Encebollado', '2 libras de atún fresco, 1 libra de yuca fresca, 2 cucharadas de aceite,  2 tomates, picados, 1 cebolla picada,  1 cucharadita de ají en polvo, 2 cucharaditas de comino molido, 8 tazas de agua,  5 ramitas de cilantro, sal al gusto, limón al gusto, curtido de cebolla y tomate.', 'El encebollado es un plato típico ecuatoriano originario de la región costa, muy probablemente de la provincia del Guayas. Es considerado el plato de bandera de la gastronomía ecuatoriana.'),
('Bolón de verde', '1/2 libra de chicharrón, 5 plátanos verdes, sal, 2 cucharada de manteca de cerdo, 1/2 libra de queso criollo.', 'Plato típico de Guayaquil, Ecuador. Se sirve para el desayuno o como merienda con un rico café.'),
('Encebollado de pescado', '1 kilo de lomos de pescado blanco, medio pimiento verde, media cebolla pequeña, sal y limón al gusto.', 'En Ecuador se sirve en un plato profundo parecido al de la sopa, pero más pequeño. El ceviche más común es el ceviche o cebiche de camarón. Se prepara con camarones hervidos, jugo de limón, jugo de naranja, salsa de tomate, cilantro, pimienta, cebolla colorada picada en pluma en cantidades abundantes. Las recetas varían regionalmente, incorporando o prescindiendo del jugo de naranja o de la salsa de tomate. Se acompaña con maíz tostado, chifles o canguil.'),
('Crema de zapallo', '1 kg de zapallo, 1 kg de papa amarilla, 1 lata de leche evaporada, 100 gr de queso, 3 huevos, 2 – 3 cucharadas de mantequilla, ajo molido, orégano molido, sal, tajadas de pan, 5 tazas de agua.', 'Sirva caliente, con pedacitos de pan tostado.'),
('Guatita', '500g de panza de res,  5 cucharadas de cebolla blanca,  4 cucharadas de pasta de maní,  2 dientes de ajo picados,  ½ libra de papas cocinadas, 2 tazas de leche, achiote, sal y pimienta al gusto.', 'Se suele servir con arroz caliente y con aguacates. El plato es típico tanto en la costa y la sierra del Ecuador y es muy calórico.'),
('Encocado de pescado', '2 libras de pescado, 4 dientes de ajo, 2 cabezas de cebolla colorada, 1 coco, 1 ají, pimiento, comino, pimienta, sal al gusto, 2 limones.', 'El pescado encocado es un plato típico de la costa que consiste de pescado cocinado en una deliciosa salsa de coco.'),
('Cangrejada', '1 atado de cangrejos, 4 cebollas blanca largas, 1/4 tz de pimienta negra en grano, 1/2 atado de cilantro, 1/2 tz de orégano, 1/4 tz comino en grano, 1/2 tz de sal aproximadamente, 1/2 tz de ajos machacados, 1 botella grande de cerveza, plátanos maduros, plátanos verdes.', 'Este delicioso plato costeño te quedará exqusito servido con ensalada de cebollas, chifles y canguil.'),
('Caldo de manguera', '2 tazas de sangre de chancho, 1 col, menudencias e intestinos de chancho, 1 pimiento grande, orégano, cilantro y hierbabuena, sal y pimienta, 1 cucharadita de ajinomoto, 6 dientes de ajo, 5 verdes, 3 tazas de arroz, 1 cebolla colorada grande.', 'Este es un plato típico de la zona costera ecuatoriana, es muy apetecido y se recomienda consumir a las embarazadas y personas anémicas, por su alto contenido de hierro.'),
('Sopa de arroz de cebada', '600 gr de carne de cerdo, 1 rama de cebolla blanca, 2 dientes de ajo machacados, 1 rama de perejil, 1 tomate pequeño rojo, 1/2 tz de arroz de cebada, 4 papas blancas picadas, 4 hojas de col picadas, 3 cds de cebolla blanca picada, 1 cd de cilantro picado, 2 cds de aceite de achiote, sal y pimienta, comino.', 'Es una sopa muy nutritiva especialmente para los niños.'),
('Caldo de pata', '1 pata de res, 2 ramas de cebolla blanca, 1 rama de perejil, ½ taza de cebolla blanca picada, 3 cucharadas de aceite, 4 onzas de maní tostado y molido, ¼ de litro de leche, 1 libra de mote cocido, achiote, sal y comino molido al gusto.', 'Para acompañar: arroz blanco, tajas de aguacate y ají criollo.'),
('Sancocho', 'Carne de res, 1 plátano verde, papa criolla, mazorca, cilantro, sal, cebolla, zanahoria, agua.', 'La variedad de sabores y la densidad es importante en este plato, se lo sirve caliente en plato hondo.'),
('Caldo de bagre', '1 kilo de bagre, 3 cucharadas de maní molido, 250 gramos de yuca, 1 plátano verde mediano, 250 gramos de camotes pelados y troceados, 1 ajo, 3 1/2 litros de agua, 2 cucharaditas de aceite, 1 cucharadita de achiote, 1/2 cucharadita de comino, sal al gusto.', 'Sirva el caldo en seguida, espolvoreado con cilantro picado. Se puede acompañar con arroz blanco y ají.'),
('Llapingacho', '7 papas peladas, 2 tazas de queso rallado, 2 cucharadas de mantequilla, 2 huevos, 1 rama de cebolla blanca picada, sal, achiote al gusto, aceite para freír.', 'Este plato es parte importante de la cultura del Ecuador, y es uno de los más representativos de la comida serrana.'),
('Salprieta', '450 gr de harina de maíz tostado, 450 gr de maní tostado y pelado, 1 cd de comino molido, 1/2 cd de pimienta molida, 1 cds de cilantro picado, 5 cds de aceite, 3 cds de manteca de cerdo, 2 cds de manteca de color, sal y pimienta al gusto.', 'Se podría decir que es un aderezo típico de una de las provincias de la costa ecuatoriana, es muy apetecida y muy consumida en especial durante los desayunos o como piqueo, o a la hora del café.'),
('Corviche', '4 plátanos verdes, 2 cucharadas de maní, tomate, cilantro, sal, pimienta, atún o pescado, cebolla blanca.', 'Se podría decir que es un aderezo típico de una de las provincias de la costa ecuatoriana, es muy apetecida y muy consumida en especial durante los desayunos o como piqueo, o a la hora del café.'),
('Viche', '1/2 libra de cabezas y huesos de pescado, o un pescado entero pequeño, 8 tazas de agua, 3 tazas de leche, 1 taza de maní tostado ligeramente, 2 cdas. de aceite, 1 taza de cebolla colorada picada, 1 cdta. de comino molido, 4 dientes de ajo machacados, sal a gusto.', 'Esta deliciosa sopa es típica de Manabí, Ecuador. Es una sopa con mucha consistencia y el contrastes de los sabores es exquisita'),
('Humita', '6 tazas de choclo tierno molido, 2 onzas de manteca de cerdo, ¼ de queso rallado, 3 huevos, ½ cucharadita de polvo de hornear, 1 cucharadita de azúcar, 2 onzas de mantequilla, hojas de choclo y sal al gusto.', 'Pasa unos momentos gratos preparando estas humitas con tus seres queridos y, luego, disfruten una porción como recompensa por su labor.'),
('Empanadas de verde', '2 plátanos verdes, 3 cucharaditas de cebolla blanca larga, 8 onzas de queso fresco, 1 cucharadita de manteca de color, aceite, sal y pimienta.', 'Empanadas de masa de plátanos, cominos y manteca, se rellenan o bien con el relleno de carne o de queso se fríen hasta dorar, deliciosas.'),
('Empanadas de morocho', '1 libra de morocho, 6 cucharadas de paiteña blanca, 12 onzas de carne molida de cerdo o de res, 2 cucharaditas de achiote, sal, pimienta, 2 cucharadas de arroz, 2 cucharaditas de arvejas, 1 zanahoria mediana.', 'Las empanadas de morocho se pueden acompañar con café, agua aromática, gaseosa o con la bebida caliente o fría que prefieras.'),
('Empanadas de viento', '1 libra de harina de trigo, 1 cucharadita de polvo de hornear, 1/4 libra de mantequilla, 1/2 libra de queso fresco, azúcar al gusto, sal al gusto, agua fría.', 'Estas empanadas se llaman de viento porque al freírlas se inflan mucho y parecen llenas de aire, son de una textura crocante y muy ricas al paladar.'),
('Arroz marinero', '500 gr. de arroz, 4 tazas de caldo de pescado o mariscos, 400 gr. de camarones, 400 gr. de almejas, 400 gr. de conchas, 400 gr. de calamar, 400 gr. de mejillones, 400 gr. de gambas, 400 gr. de pescado blanco, 5 cucharadas de aceite de girasol, 2 cucharadas de mantequilla, 1 cucharada de achiote, 3 dientes de ajo machacado, 1 cucharadita de cilantro, 1 cucharadita de comino, 1 taza de cebolla blanca, 1 pimiento picado, sal y pimienta al gusto.', 'El arroz marinero o arroz con mariscos es un plato típico del Ecuador por su excelente sabor y mezcla de sabores.'),
('Seco de gallina', '1 Gallina (4 lbs.), 3 ramas de cebolla blanca, 2 tomates medianos, 1 hoja de laurel, 4 clavos de olor, 4 dientes de ajo, 1 pimiento rojo, 1 litro de agua, 2 lbs. de papas peladas y cocinadas, 1 lb. de arroz al vapor, sal.', 'Servir bien caliente, acompañado del arroz y el maduro frito.'),
('Aguado de gallina', '6 presas de gallina, 1/2 taza de arroz, 1/2 libra de papa, 6 ramas de cebolla blanca, 2 cabezas de cebolla colorada, 3 dientes de ajo, sal y pimienta al gusto, 1 cubito maggy de pollo, 3 cucharaditas de aceite de color.', 'El aguado de gallina es uno de los platos favoritos por todos, prepárelo y disfrútelo entre familia. '),
('Tamal', '1 kilo de maíz seco, 250 gr de manteca de cerdo, 1 kilo de carne de cerdo entero, 1 litro de agua, 2 ramas de cebolla blanca,  2 dientes de ajo, comino, sal, pimienta, 1½ taza de caldo de cerdo, 4 huevos,  3 ajíes.', 'Este tamal se lo puede acompañar con un buen café negro.'),
('Cuy asado', '1 cuy, 2 libras de papa cocinada, 2 ramas de cebolla blanca, 2 ajos machacados, 1/2 taza de salsa de maní, hojas de lechuga, sal, pimienta, comino, ajo al gusto.', 'El consumo de cuy en nuestro país, particularmente en la Sierra, es muy importante. No hay fiesta de pueblo sin el cuy. El consumo de cuy en nuestro país, particularmente en la Sierra, es muy importante. No hay fiesta de pueblo sin el cuy.'),
('Sopa de quinua', '1 zanahoria, 1 cebolla, 2 tallos de apio, col, 1 litro de agua, 100 gramos de quinua, sal.', 'La sopa de verduras está verdaderamente buena con una rica y nutritiva selección de verduras y quinua, que puedes preparar en pocos minutos.'),
('Hornado de chancho', '1 pierna entera de chancho, jugo de 3 limones, 40 dientes de ajo machacados, 3 cucharadas de comino molido, 3 cucharadas de sal, 1 cucharada de pimienta molida, 8 tazas de cerveza para marinar y 6 tazas de cerveza para hornear, 12 onzas de mantequilla, 2 cucharadas de achiote molido, 10 papas de tamaño mediano.', 'El hornado de chancho o cerdo es un plato típico de Ecuador y hay muchos lugares en los mercados que se especializan en el hornado, por lo general hornean el chancho o cerdo entero en un horno de arcilla.'),
('Fritada', '1 libra de carne de cerdo con grasa, 1/2 libra de manteca de cerdo, 5 rama de cebolla blanca, 1 ají fresco, 1 litro de cerveza, comino al gusto, sal al gusto, pimienta al gusto.', 'Servir con mote cocido, maduro frito, ensalada criolla (tomate, cebolla y pimiento).'),
('Mote pillo', '2 cebollas largas, 1/2 cucharadita de manteca de cerdo, 6 huevos, 1 libra de mote cocido, 1 cucharada de  achiote, sal, 1 cucharada de cilantro picado, 1/4 de taza de leche.', 'El mote pillo es una clásica receta de la Sierra ecuatoriana, creo que si alguna ciudad puede llamar suyo al mote pillo es Cuenca.'),
('Locro de habas', '250 gramos de habas secas, 1/4 de cebolla picada, 2 dientes de ajos, 3 jitomates medianos, 4 ramitas de cilantro picadas, 1/4 de cucharada de sal, 1/4 de cucharadita de orégano, aceite de oliva.', 'Este locro se prepara con habas, las cuales son muy populares en Ecuador, en especial en la Sierra.'),
('Cecina', '600 gr carne de cerdo (fileteada), sal y comino al gusto, 400 gr de yuca, 100 gr cebolla perla, 200 gr tomate, 10 gr de limón, 30 gr de aceite de oliva, 40 gr cilantro (finamente picado).', 'Este es un plato típico de la Sierra Ecuatoriana.'),
('Yahuarlocro', '1 poco de menudo de chancho o de oveja, 4 libras de papas, un poco de col blanca picada, 1 cucharada de manteca, sal, especerías, leche, 1 ramita de cilantro.', 'Servir muy caliente y acompañar con un plato aparte con la sangre, el aguacate, la cebolla curtida y el tomate.'),
('Chivo al hueco', 'Vinagre de piña, carne de chivo, mostaza, tamarindo al gusto, rancheros, orégano a elección, pimienta al gusto, comino a elección, ajo, ajinomoto, color a elección, pimientos, ajíes escabeche, cilantro al gusto, cebolla a elección, limón.', 'Acompañe con arroz amarillo y papas al vapor, tomate, aguacate y plátanos maduros fritos.'),
('Repe', '6 guineos verdes, 1 taza de cebolla larga, 3 cucharadas de cilantro picado, 4 tazas agua, 8 onzas queso fresco rallado, 1 litro de leche, 1 taza crema de leche, sal al gusto.', 'El repe es una sopa cremosa preparada con guineos o bananos verdes, esta sopa es un plato típico de la provincia de Loja en Ecuador.'),
('Chanfaina', '2 libras de chanfaina, 1 cucharada de mantequilla, 1 cucharada de aceite, 4 cucharadas de cebolla larga,  ½ cucharadita de manteca roja, ¼ de taza de crema de leche, ½ cucharada de perejil, ½ taza de leche, 1 huevo, sal y pimienta al gusto.', 'Plato típico de los pueblos de la costa ecuatoriana.'),
('Locro de papas', '2 libras de papa chola, ¼ de queso de mesa, 1 taza de leche, 1 huevo, cebolla blanca, 1 pizca de aceite, ½ cucharadita de orégano.', 'El locro de papa con queso es una clásica sopa ecuatoriana de papas y queso. Este delicioso locro de papas es una sopa muy cremosa.'),
('Seco de chivo', '1 kg de osobuco de borrego, 2 cebollas paiteñas cortadas en cuadritos finos, 2 pimientos verdes cortados en daditos, 3 cucharadas de perejil picado, 3 cucharadas de cilantro picado, 4 tomates bien maduros, 6 naranjillas de jugo bien maduras, 1 ají grande, 1 cucharadita de manteca de color.', 'Acompañe con arroz DE LA OLLA, tomate, aguacate, papas cocidas y lechuga.'),
('Sopa de arvejas con guineo', '1 y 1/2 taza de arveja verde madura, 1 guineo verde, 1 cebolla pequeña, ajo, sal, comino, 1 cucharita de aceite, quesillo, leche y culantro.', 'Sirva con aguacate y ají.'),
('Seco de guanta', '2 kl carne de guanta, vinagre de guineo, 1 cebolla paiteña finamente picada, 2 cebollas blanca picadas, 2 cucharadas de pimiento, 1 ají, ajo machacado, 1 Cd cilantro picado, 4 cds chillangua picada, 2 cds maní, sal y pimienta al gusto.', 'Plato típico de la Amazonia ecuatoriana que es una de las zonas mas exóticas del ecuador, la guanta es un roedor que se encuentra en la selva ecuatoriana, su carne es muy apetecida en esta zona.'),
('Chicha de yuca', '2 yucas medianas, 1 camote, 1 plátano maduro, agua.', 'En la mayoría de comunidades de la Amazonía ecuatoriana una de las maneras de dar la bienvenida a los visitantes es brindarles chicha de yuca o de chonta. Esta bebida se sirve en un pilche, un recipiente redondo, y es considerada una gran fuente de energía.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lenguas`
--

CREATE TABLE IF NOT EXISTS `lenguas` (
  `nombre` text NOT NULL,
  `hablantes` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lenguas`
--

INSERT INTO `lenguas` (`nombre`, `hablantes`) VALUES
('A´ingae', 1077),
('Achuar Chicham', 13456),
('Awap´it', 3131),
('Cha´palaa', 9393),
('Kichwa Amazónico', 591448),
('Paicoca', 492),
('Shimingae', 323),
('Shiwiar Chicham', 942),
('Sia Pedee', 509),
('Shuar Chicham', 61910),
('Tsafiqui', 2838),
('Wao Terero', 1766),
('Zápara', 367);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tradiciones`
--

CREATE TABLE IF NOT EXISTS `tradiciones` (
  `nombre` varchar(100) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tradiciones`
--

INSERT INTO `tradiciones` (`nombre`, `fecha`, `descripcion`) VALUES
('Carnaval', 'Fecha movible', 'Se celebra en todo el país. en general, se arroja baldes de agua o globos a los transeúntes. Aun cuando esta práctica ha caído en desuso por el desperdicio de agua.'),
('Inti Raymi', '21 de junio', 'Se celebra desde antes del colonialismo, en honor al sol. Las fiestas ocurren a lo largo de junio y julio, con el evento principal en el solsticio de verano. Las celebraciones tienen lugar en la provincia de Imbabura y se concentran en la ciudad de Otavalo.'),
('Día de los muertos.', '02 de noviembre', 'Se celebra en todo el Ecuador. Las familias visitan las tumbas de sus seres queridos, para limpiarlas, colocar flores en el lugar, y compartir una comida. Los ecuatorianos también se alimentan de la colada morada, una bebida espesa de zarzamora a base de fruta, y las guaguas de pan, que son pedazos de pan adornados con forma de bebés.'),
('Navidad', '25 de diciembre', 'Es una de las festividades más importantes del cristianismo, junto con la Pascua de resurrección y Pentecostés. Esta solemnidad, que conmemora el nacimiento de Jesucristo en Belén, se celebra el 25 de diciembre en la Iglesia católica, en la Iglesia anglicana, en algunas comunidades protestantes y en la mayoría de las Iglesias ortodoxas. '),
('Año viejo.', '31 de diciembre', 'Año viejo es un monigote que representa básicamente el año que termina, elaborado con ropa vieja, cartón o papel, relleno de paja o aserrín y con frecuencia con artefactos pirotécnicos, para ser quemado a la medianoche del 31 de diciembre.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `nombre` varchar(10) NOT NULL,
  `contrasena` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nombre`, `contrasena`) VALUES
('cultura', 'proyecto');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
