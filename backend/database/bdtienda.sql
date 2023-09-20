-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bdtienda
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id_compra` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `id_modo_pago` int NOT NULL,
  `nro_cuenta` varchar(25) NOT NULL,
  `total` float NOT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `email_idx` (`email`),
  KEY `id_modo_pago_idx` (`id_modo_pago`),
  KEY `nro_cuenta_idx` (`nro_cuenta`),
  CONSTRAINT `email` FOREIGN KEY (`email`) REFERENCES `usuario` (`email`),
  CONSTRAINT `id_modo_pago` FOREIGN KEY (`id_modo_pago`) REFERENCES `tipo_modo_pago` (`id_modo_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compra`
--

DROP TABLE IF EXISTS `detalle_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_compra` (
  `id_compra` int NOT NULL,
  `id_detalle_compra` int NOT NULL,
  `id_producto` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `importe` float DEFAULT NULL,
  PRIMARY KEY (`id_compra`,`id_detalle_compra`),
  KEY `id_producto_idx` (`id_producto`),
  CONSTRAINT `id_compra` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`),
  CONSTRAINT `id_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compra`
--

LOCK TABLES `detalle_compra` WRITE;
/*!40000 ALTER TABLE `detalle_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrega`
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrega` (
  `id_entrega` int NOT NULL AUTO_INCREMENT,
  `id_compra` int DEFAULT NULL,
  `fecha_entrega_prevista` date DEFAULT NULL,
  `id_estado_entrega` int DEFAULT NULL,
  `nro_seguimiento` varchar(45) DEFAULT NULL,
  `domicilio_entrega` varchar(45) DEFAULT NULL,
  `id_localidad` int DEFAULT NULL,
  `codigo_postal` char(10) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `apellido_receptor` varchar(45) DEFAULT NULL,
  `nombre_receptor` varchar(45) DEFAULT NULL,
  `dni_receptor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_entrega`),
  KEY `compra_idx` (`id_compra`),
  KEY `id_localidad_idx` (`id_localidad`),
  KEY `localidad_idx` (`id_localidad`),
  KEY `estado_entrega_idx` (`id_estado_entrega`),
  CONSTRAINT `compra` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`),
  CONSTRAINT `estado_entrega` FOREIGN KEY (`id_estado_entrega`) REFERENCES `tipo_estado_entrega` (`id_estado_entrega`),
  CONSTRAINT `localidad` FOREIGN KEY (`id_localidad`) REFERENCES `tipo_localidad` (`id_localidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `id_marca` int DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `descripcion` longtext,
  `id_estilo` int DEFAULT NULL,
  `id_rodado` int DEFAULT NULL,
  `id_material` int DEFAULT NULL,
  `id_color` int DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_marca_idx` (`id_marca`),
  KEY `id_estilo_idx` (`id_estilo`),
  KEY `id_rodado_idx` (`id_rodado`),
  KEY `id_material_idx` (`id_material`),
  KEY `id_color_idx` (`id_color`),
  CONSTRAINT `id_color` FOREIGN KEY (`id_color`) REFERENCES `tipo_color` (`id_color`),
  CONSTRAINT `id_estilo` FOREIGN KEY (`id_estilo`) REFERENCES `tipo_estilo` (`id_estilo`),
  CONSTRAINT `id_marca` FOREIGN KEY (`id_marca`) REFERENCES `tipo_marca` (`id_marca`),
  CONSTRAINT `id_material` FOREIGN KEY (`id_material`) REFERENCES `tipo_material` (`id_material`),
  CONSTRAINT `id_rodado` FOREIGN KEY (`id_rodado`) REFERENCES `tipo_rodado` (`id_rodado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,1,'Epic Com','RockShox Reba RL, Motion Control damper, Solo Air, 42mm offset, 15x110mm thru-axle, 100mm of travel. MANUBRIO: Specialized Alloy Minirise, 10mm rise, 750mm, 31.8mm clamp. CINTA: Specialized Trail Grips',1,6,3,2,3000120,NULL),(2,3,'Vulcano','Bicicleta apta para caminos rurales',1,6,2,1,220000,NULL);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_color`
--

DROP TABLE IF EXISTS `tipo_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_color` (
  `id_color` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_color`
--

LOCK TABLES `tipo_color` WRITE;
/*!40000 ALTER TABLE `tipo_color` DISABLE KEYS */;
INSERT INTO `tipo_color` VALUES (1,'Rojo'),(2,'Azul'),(3,'Blanco'),(4,'Negro'),(5,'Amarillo');
/*!40000 ALTER TABLE `tipo_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_departamento`
--

DROP TABLE IF EXISTS `tipo_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_departamento` (
  `id_departamento` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_departamento`
--

LOCK TABLES `tipo_departamento` WRITE;
/*!40000 ALTER TABLE `tipo_departamento` DISABLE KEYS */;
INSERT INTO `tipo_departamento` VALUES (7,'Calamuchita'),(14,'Capital'),(21,'Colòn');
/*!40000 ALTER TABLE `tipo_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int NOT NULL AUTO_INCREMENT,
  `descripcion` char(10) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` VALUES (1,'DNI'),(2,'PAS'),(3,'LC'),(4,'LE');
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_estado_entrega`
--

DROP TABLE IF EXISTS `tipo_estado_entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_estado_entrega` (
  `id_estado_entrega` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estado_entrega`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_estado_entrega`
--

LOCK TABLES `tipo_estado_entrega` WRITE;
/*!40000 ALTER TABLE `tipo_estado_entrega` DISABLE KEYS */;
INSERT INTO `tipo_estado_entrega` VALUES (1,'En preparación'),(2,'Despachado'),(3,'Entregado');
/*!40000 ALTER TABLE `tipo_estado_entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_estilo`
--

DROP TABLE IF EXISTS `tipo_estilo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_estilo` (
  `id_estilo` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estilo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_estilo`
--

LOCK TABLES `tipo_estilo` WRITE;
/*!40000 ALTER TABLE `tipo_estilo` DISABLE KEYS */;
INSERT INTO `tipo_estilo` VALUES (1,'Montaña'),(2,'Ruta'),(3,'Eléctrica'),(4,'Niños'),(5,'Urbana');
/*!40000 ALTER TABLE `tipo_estilo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_localidad`
--

DROP TABLE IF EXISTS `tipo_localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_localidad` (
  `id_localidad` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `id_departamento` int DEFAULT NULL,
  PRIMARY KEY (`id_localidad`),
  KEY `id_departamento_idx` (`id_departamento`),
  CONSTRAINT `id_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `tipo_departamento` (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_localidad`
--

LOCK TABLES `tipo_localidad` WRITE;
/*!40000 ALTER TABLE `tipo_localidad` DISABLE KEYS */;
INSERT INTO `tipo_localidad` VALUES (10,'Córdoba',14),(120,'Los Molinos',7),(150,'La Calera',21);
/*!40000 ALTER TABLE `tipo_localidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_marca`
--

DROP TABLE IF EXISTS `tipo_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_marca` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_marca`
--

LOCK TABLES `tipo_marca` WRITE;
/*!40000 ALTER TABLE `tipo_marca` DISABLE KEYS */;
INSERT INTO `tipo_marca` VALUES (1,'Specialized'),(2,'Scott'),(3,'BMC'),(4,'Venzo');
/*!40000 ALTER TABLE `tipo_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_material`
--

DROP TABLE IF EXISTS `tipo_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_material` (
  `id_material` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_material`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_material`
--

LOCK TABLES `tipo_material` WRITE;
/*!40000 ALTER TABLE `tipo_material` DISABLE KEYS */;
INSERT INTO `tipo_material` VALUES (1,'Hierro'),(2,'Aluminio'),(3,'Carbono');
/*!40000 ALTER TABLE `tipo_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_modo_pago`
--

DROP TABLE IF EXISTS `tipo_modo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_modo_pago` (
  `id_modo_pago` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_modo_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_modo_pago`
--

LOCK TABLES `tipo_modo_pago` WRITE;
/*!40000 ALTER TABLE `tipo_modo_pago` DISABLE KEYS */;
INSERT INTO `tipo_modo_pago` VALUES (1,'Mercado Pago'),(2,'Tarjeta Débito');
/*!40000 ALTER TABLE `tipo_modo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_rodado`
--

DROP TABLE IF EXISTS `tipo_rodado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_rodado` (
  `id_rodado` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rodado`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_rodado`
--

LOCK TABLES `tipo_rodado` WRITE;
/*!40000 ALTER TABLE `tipo_rodado` DISABLE KEYS */;
INSERT INTO `tipo_rodado` VALUES (1,'14'),(2,'16'),(3,'20'),(4,'26'),(5,'28'),(6,'29');
/*!40000 ALTER TABLE `tipo_rodado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_rol`
--

DROP TABLE IF EXISTS `tipo_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_rol` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_rol`
--

LOCK TABLES `tipo_rol` WRITE;
/*!40000 ALTER TABLE `tipo_rol` DISABLE KEYS */;
INSERT INTO `tipo_rol` VALUES (1,'Administrador'),(2,'Cliente');
/*!40000 ALTER TABLE `tipo_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `email` varchar(50) NOT NULL,
  `id_tipo_documento` int NOT NULL,
  `nro_documento` varchar(20) NOT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_rol` int DEFAULT NULL,
  `domicilio` varchar(100) DEFAULT NULL,
  `codigo_postal` char(10) DEFAULT NULL,
  `id_localidad` int DEFAULT NULL,
  `nro_telefono` varchar(45) DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`email`),
  KEY `id_rol_idx` (`id_rol`),
  KEY `id_localidad_idx` (`id_localidad`),
  KEY `id_tipo_documento_idx` (`id_tipo_documento`),
  CONSTRAINT `id_localidad` FOREIGN KEY (`id_localidad`) REFERENCES `tipo_localidad` (`id_localidad`),
  CONSTRAINT `id_rol` FOREIGN KEY (`id_rol`) REFERENCES `tipo_rol` (`id_rol`),
  CONSTRAINT `id_tipo_documento` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
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

-- Dump completed on 2023-09-10  9:23:22
