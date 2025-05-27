CREATE DATABASE  IF NOT EXISTS `bdproyectojesj` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bdproyectojesj`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bdproyectojesj
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `capacitaciones`
--

DROP TABLE IF EXISTS `capacitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capacitaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idOrganizacion` int NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `urlVideo` varchar(500) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `fechaPublicacion` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capacitaciones`
--

LOCK TABLES `capacitaciones` WRITE;
/*!40000 ALTER TABLE `capacitaciones` DISABLE KEYS */;
INSERT INTO `capacitaciones` VALUES (1,18,'Video de Java','Java','https://www.youtube.com/watch?v=qxXcI56NfnE','Desarrollo Web','2025-04-08 00:00:00'),(2,14,'titulo','prueba','https://www.youtube.com/watch?v=qxXcI56NfnE','Ciberseguridad','2025-04-23 00:00:00');
/*!40000 ALTER TABLE `capacitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favoritos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idOportunidades` int NOT NULL,
  `idUsuario` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_favoritos_oportunidades_idx` (`idOportunidades`),
  KEY `fk_favoritos_usuario_idx` (`idUsuario`),
  CONSTRAINT `fk_favoritos_oportunidades` FOREIGN KEY (`idOportunidades`) REFERENCES `oportunidades` (`id`),
  CONSTRAINT `fk_favoritos_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoritos`
--

LOCK TABLES `favoritos` WRITE;
/*!40000 ALTER TABLE `favoritos` DISABLE KEYS */;
INSERT INTO `favoritos` VALUES (20,27,15),(21,26,15),(24,25,16),(25,26,16),(28,26,18);
/*!40000 ALTER TABLE `favoritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oportunidades`
--

DROP TABLE IF EXISTS `oportunidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oportunidades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idOrganizacion` int NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `descripcion` varchar(10000) NOT NULL,
  `detalles` longtext NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `duracion` varchar(45) NOT NULL,
  `jornada` varchar(45) NOT NULL,
  `modalidad` varchar(45) NOT NULL,
  `pago` varchar(45) NOT NULL,
  `ubicacion` varchar(45) NOT NULL,
  `provincia` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_oportunidad_organizacion` (`idOrganizacion`),
  CONSTRAINT `fk_oportunidad_organizacion` FOREIGN KEY (`idOrganizacion`) REFERENCES `organizacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oportunidades`
--

LOCK TABLES `oportunidades` WRITE;
/*!40000 ALTER TABLE `oportunidades` DISABLE KEYS */;
INSERT INTO `oportunidades` VALUES (25,14,'Pasantes de Docentes de Permanencia','RED DECOM fue fundada en marzo de 2019 con la misión de impulsar el desarrollo integral de las comunidades, a través de la implementación de programas enfocados en la educación, la empleabilidad y el emprendimiento. Desde su creación, la organización ha trabajado para fortalecer las capacidades individuales y colectivas, ofreciendo herramientas y recursos que permiten a los miembros de las comunidades mejorar su calidad de vida, acceder a nuevas oportunidades laborales y fomentar la creación de negocios sostenibles. Con un enfoque inclusivo y orientado a la acción, RED DECOM busca ser un motor de cambio social, promoviendo el empoderamiento de las personas y contribuyendo al desarrollo económico y social de las comunidades en las que interviene.','<p>¡ÚNETE A NUESTRO EQUIPO DOCENTE EN RED DECOM!</p><p>En RED DECOM, estamos buscando Pasantías de Docentes de Permanencia para diversas áreas de formación. Si eres estudiante o recién graduado, esta es tu oportunidad para ganar experiencia, contribuir a la educación y fortalecer tu perfil profesional.</p><p><br></p><p>Áreas Disponibles:</p><p>- Gestión del Talento Humano</p><p>- Administración de Proyectos</p><p>- Contabilidad y Finanzas</p><p>- Marketing Digital</p><p>- Comunicación Empresarial</p><p>- Análisis de Negocios Digitales</p><p>- Derecho Empresarial</p><p>- Emprendimiento y PYMES</p><p>- Psicología Organizacional</p><p>- Finanzas y Planificación Estratégica</p><p>- Otras áreas</p><p><br></p><p>¿Qué ofrecemos?</p><p>Modalidad 100% Virtual –</p><p>Flexibilidad en horarios.</p><p>Experiencia laboral certificada –</p><p>Desarrolla tus habilidades pedagógicas y profesionales.</p><p>Oportunidades de crecimiento –</p><p>Acceso a cursos y formación continua.</p><p>Certificación de Pasantía –</p><p>Al finalizar tu pasantía, recibirás una certificación válida para tu desarrollo profesional.</p><p>Descuento en programas de formación –</p><p>Acceso a descuentos exclusivos en nuestros cursos y programas académicos.</p><p>Red de contacto –</p><p>Conexión con otros profesionales y posibles oportunidades laborales a futuro.</p><p><br></p><p>Requisitos:</p><p>Estudiantes o recién graduados en carreras afines a las áreas mencionadas.</p><p>Conocimientos básicos en las áreas correspondientes (enfoque en la práctica y la teoría).</p><p>Habilidades de comunicación efectiva</p><p>capacidad para transmitir conocimientos de manera clara y efectiva.</p><p>Compromiso y proactividad</p><p>Actitud positiva y disposición para aprender.</p><p>Manejo de herramientas ofimáticas</p><p>Word, Excel, PowerPoint, entre otros.</p><p>Disponibilidad de tiempo para el trabajo en modalidad virtual.</p><p><br></p><p>¿Cómo aplicar?</p><p>Fecha límite para aplicar: ¡No dejes pasar esta oportunidad!</p><p>¡Aprovecha esta oportunidad para adquirir experiencia, crecer profesionalmente y contribuir al desarrollo de futuros talentos!</p>','Voluntariado','3 meses','Diurna','Virtual','No pagado','Cartago por la Ruinas','Alajuela'),(26,16,'Asistente de preescolar','Somos una organización costarricense sin fines de lucro de interés público que trabaja de la mano con la familia, la comunidad y alianzas público-privadas, en beneficio de la niñez desde el nacimiento a los 5 años mediante innovación y nutrición en los centros educativos. Trabajamos con convenios de cooperación con la municipalidad de San José, Desamparados y Alajuelita.','<p>Educación y Formación académica:</p><p>	<strong>Técnico de Asistente de Preescolar, diplomado en Preescolar o estudiando actualmente </strong>Bachillerato en Preescolar</p><p>Otros requisitos:</p><ol><li>•Evaluación de Idoneidad Mental para laborar en CAI vigente (Obligatorio)</li><li>•Carné de Manipulación de Alimentos al día. (Obligatorio)</li><li>•Manejo de “Office” (Word, Power Point, Excel), implementos tecnológicos.</li><li>•Disponibilidad Inmediata</li></ol>','Pasantia','11 meses','Nocturna','Mixta','Pagado','En la Lima de Limon','Puntarenas'),(27,18,'Asistente Ingeniería','Apoyar en la planificación, ejecución y supervisión de proyectos de obra civil bajo la dirección del Ingeniero Civil encargado, contribuyendo al cumplimiento de los objetivos del proyecto mediante el análisis técnico, la elaboración de reportes y el seguimiento a las actividades programadas.\n','<h2>Requisitos Académicos y Técnicos</h2><ul><li>Formación Académica:</li><li>Estudiante de Ingeniería Civil.</li><li>Preferiblemente cursando Bachillerato en Ingeniería Civil.</li><li>Conocimientos Técnicos:</li><li>Manejo de Project, Revit, AutoCAD y paquete de Office.</li><li>Conocimiento básico en interpretación de planos y normativa de construcción.</li><li>Funciones Principales</li><li>Soporte Técnico:</li><li>Apoyar en la elaboración y revisión de planos técnicos y diseños de obra.</li><li>Brindar asistencia en el uso de herramientas tecnológicas como Project, Revit y AutoCAD.</li><li>Gestión de Proyectos:</li><li>Colaborar en la planificación y seguimiento del cronograma de actividades.</li><li>Apoyar en la gestión y actualización de presupuestos, control de materiales y recursos del proyecto.</li><li>Supervisión y Control:</li><li>Asistir en la supervisión de las actividades en sitio para garantizar el cumplimiento de los estándares de calidad y seguridad.</li><li>Elaborar reportes sobre avances, incidencias y necesidades del proyecto.</li><li>Documentación:</li><li>Redactar y mantener actualizados los registros y reportes relacionados con las actividades del proyecto.</li></ul><p><br></p><h2>Habilidades y Competencias</h2><ol><li>Fuertes habilidades analíticas para resolver problemas técnicos y operativos de manera efectiva.</li><li>Excelente comunicación verbal y escrita para coordinar con equipos de trabajo y documentar procesos.</li><li>Proactividad, organización y capacidad para trabajar en equipo.</li><li>Adaptabilidad para trabajar en diferentes ubicaciones dentro y fuera del Gran Área Metropolitana (GAM).</li></ol>','Voluntariado','7 meses','Nocturna','Presencial','Pagado','En guadalupe','Guanacaste'),(28,14,'prueba','prueba','<p>prueba</p>','Voluntariado','2 meses','Diurna','Mixta','No pagado','pruebaprueba','San José');
/*!40000 ALTER TABLE `oportunidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizacion`
--

DROP TABLE IF EXISTS `organizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `nombreRepresentante` varchar(45) NOT NULL,
  `cedulaRepresentante` varchar(45) NOT NULL,
  `correoElectronico` varchar(200) NOT NULL,
  `clave` varchar(45) NOT NULL,
  `numeroTelefonico` varchar(45) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `provincia` varchar(45) NOT NULL,
  `canton` varchar(45) NOT NULL,
  `distrito` varchar(45) NOT NULL,
  `rutaImagen` varchar(700) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizacion`
--

LOCK TABLES `organizacion` WRITE;
/*!40000 ALTER TABLE `organizacion` DISABLE KEYS */;
INSERT INTO `organizacion` VALUES (13,'youtube','youtube','youtube','youtube@gmail.com','youtube','43534','youtube','cartago','central','dulce','resources/images/Organizaciones/youtube.jpg'),(14,'microsoft','microsoft','microsoft','microsoft@gmail.com','microsoft','8567657','microsoft','heredia','central','dulce','resources/images/Organizaciones/microsoft.jpg'),(15,'boston','boston','boston','boston@gmail.com','boston','8567657','boston','boston','central','dulce','resources/images/Organizaciones/boston.jpg'),(16,'pepsi','pepsi','pepsi','pepsi@gmail.com','pepsi','85676576576','pepsi','pepsi','central','dulce','resources/images/Organizaciones/pepsi.jpg'),(17,'tekexperts','tekexperts','tekexperts','tekexperts@gmail.com','tekexperts','42342','tekexperts','tekexperts','central','dulce','resources/images/Organizaciones/tekexperts.jpg'),(18,'starbucks','starbucks','starbucks','starbucks@gmail.com','starbucks','432421','starbucks','starbucks','central','dulce','resources/images/Organizaciones/starbucks.jpg'),(19,'mcdonals','mcdonals','mcdonals','mcdonals@gmail.com','mcdonals','mcdonals','mcdonals','mcdonals','mcdonalsmcdonals','mcdonals','resources/images/Organizaciones/mcdonals.jpg'),(20,'organizacion','organizacion','organizacion','estebanhm05@gmail.com','organizacion','organizacion','organizacion','organizacion','organizacion','organizacion','resources/images/Organizaciones/organizacion.png');
/*!40000 ALTER TABLE `organizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postulaciones`
--

DROP TABLE IF EXISTS `postulaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postulaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idOportunidades` int NOT NULL,
  `idUsuario` int NOT NULL,
  `estado` varchar(45) NOT NULL,
  `fechaPostulacion` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postulaciones`
--

LOCK TABLES `postulaciones` WRITE;
/*!40000 ALTER TABLE `postulaciones` DISABLE KEYS */;
INSERT INTO `postulaciones` VALUES (20,25,15,'Aceptado','2025-04-08 00:00:00'),(21,27,15,'Rechazado','2025-04-08 00:00:00'),(22,26,15,'Pendiente de revisión','2025-04-23 00:00:00'),(23,25,18,'Revisado','2025-04-23 00:00:00');
/*!40000 ALTER TABLE `postulaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `correoElectronico` varchar(200) NOT NULL,
  `clave` varchar(45) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `genero` varchar(45) NOT NULL,
  `estatus` varchar(45) NOT NULL,
  `provincia` varchar(45) NOT NULL,
  `canton` varchar(45) NOT NULL,
  `distrito` varchar(45) NOT NULL,
  `numeroContacto` varchar(45) NOT NULL,
  `rutaImagen` varchar(700) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (14,'jaime','fung','jaime@gmail.com','jaime','2008-10-09','Femenino','Desempleado','san jose','ezcasu','guada','3213123','resources/images/Usuarios/jaimefung.jpg'),(15,'esteban','hernandez','estebanhm05@gmail.com','esteban','2008-09-11','Masculino','Empleado en formación','cartago','central','dulce','4353435','resources/images/Usuarios/estebanhernandez.jpg'),(16,'jesus','alvarado','jesusar311@gmail.com','12345','2008-03-20','Masculino','Estudiante','perez zeles','perez','san jose','876876','resources/images/Usuarios/jesusalvarado.jpg'),(18,'usuario','usuario','estebanh493@gmail.com','esteban','2008-10-02','Femenino','Desempleado','usuario','usuario','usuario','usuario','resources/images/Usuarios/usuariousuario.png');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-23 20:41:44
