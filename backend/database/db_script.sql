DROP SCHEMA IF EXISTS bdtienda ;
CREATE SCHEMA IF NOT EXISTS bdtienda;
USE bdtienda;

-- -----------------------------------------------------
-- Tabla tipo_rol
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tipo_rol (
  `id_rol` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_rol`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Tabla usuario
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS usuario (
  `email` VARCHAR(50) NOT NULL,
  `nro_documento` INT NOT NULL,
  `nombre` VARCHAR(50) NOT NULL,
  `apellido` VARCHAR(50) NOT NULL,
  `clave` VARCHAR(20) NOT NULL,
  `telefono` VARCHAR(45) NULL DEFAULT NULL,
  `id_rol` INT NULL DEFAULT NULL,
  PRIMARY KEY (`email`),
  INDEX `id_rol_idx` (`id_rol` ASC),
  CONSTRAINT `id_rol`
    FOREIGN KEY (`id_rol`)
    REFERENCES `bdtienda`.`tipo_rol` (`id_rol`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Tabla tipo_modo_pago
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tipo_modo_pago (
  `id_modo_pago` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_modo_pago`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Tabla compra
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS compra (
  `id_compra` INT NOT NULL AUTO_INCREMENT,
  `nro_factura` INT NOT NULL,
  `fecha` DATE NOT NULL,
  `nro_cuenta` INT NOT NULL,
  `total` FLOAT NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `id_modo_pago` INT NOT NULL,
  PRIMARY KEY (`id_compra`),
  INDEX `email_idx` (`email` ASC),
  INDEX `id_modo_pago_idx` (`id_modo_pago` ASC),
  INDEX `nro_cuenta_idx` (`nro_factura` ASC),
  CONSTRAINT `email`
    FOREIGN KEY (`email`)
    REFERENCES `bdtienda`.`usuario` (`email`),
  CONSTRAINT `id_modo_pago`
    FOREIGN KEY (`id_modo_pago`)
    REFERENCES `bdtienda`.`tipo_modo_pago` (`id_modo_pago`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Tabla tipo_color
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tipo_color (
  `id_color` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_color`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Tabla tipo_estilo
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tipo_estilo (
  `id_estilo` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_estilo`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Tabla tipo_marca
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tipo_marca (
  `id_marca` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_marca`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Tabla tipo_material
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tipo_material (
  `id_material` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_material`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Tabla tipo_rodado
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tipo_rodado (
  `id_rodado` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_rodado`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Tabla producto
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS producto (
  `id_producto` INT NOT NULL AUTO_INCREMENT,
  `modelo` VARCHAR(45) NOT NULL,
  `precio` FLOAT NOT NULL,
  `stock` INT NOT NULL,
  `imagen` VARCHAR(200) NULL DEFAULT NULL,
  `detalle` TEXT(500) NULL,
  `id_marca` INT NULL DEFAULT NULL,
  `id_rodado` INT NULL DEFAULT NULL,
  `id_estilo` INT NULL DEFAULT NULL,
  `id_material` INT NULL DEFAULT NULL,
  `id_color` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  INDEX `id_marca_idx` (`id_marca` ASC),
  INDEX `id_estilo_idx` (`id_estilo` ASC),
  INDEX `id_rodado_idx` (`id_rodado` ASC),
  INDEX `id_material_idx` (`id_material` ASC),
  INDEX `id_color_idx` (`id_color` ASC),
  CONSTRAINT `id_color`
    FOREIGN KEY (`id_color`)
    REFERENCES `bdtienda`.`tipo_color` (`id_color`),
  CONSTRAINT `id_estilo`
    FOREIGN KEY (`id_estilo`)
    REFERENCES `bdtienda`.`tipo_estilo` (`id_estilo`),
  CONSTRAINT `id_marca`
    FOREIGN KEY (`id_marca`)
    REFERENCES `bdtienda`.`tipo_marca` (`id_marca`),
  CONSTRAINT `id_material`
    FOREIGN KEY (`id_material`)
    REFERENCES `bdtienda`.`tipo_material` (`id_material`),
  CONSTRAINT `id_rodado`
    FOREIGN KEY (`id_rodado`)
    REFERENCES `bdtienda`.`tipo_rodado` (`id_rodado`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Tabla detalle_compra
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS detalle_compra (
  `id_compra` INT NOT NULL,
  `id_detalle_compra` INT NOT NULL,
  `cantidad` INT NOT NULL,
  `precio_unitario` FLOAT NOT NULL,
  `importe` FLOAT NOT NULL,
  `id_producto` INT NOT NULL,
  PRIMARY KEY (`id_compra`, `id_detalle_compra`),
  INDEX `id_producto_idx` (`id_producto` ASC),
  CONSTRAINT `id_compra`
    FOREIGN KEY (`id_compra`)
    REFERENCES `bdtienda`.`compra` (`id_compra`),
  CONSTRAINT `id_producto`
    FOREIGN KEY (`id_producto`)
    REFERENCES `bdtienda`.`producto` (`id_producto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Tabla tipo_estado_entrega
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tipo_estado_entrega (
  `id_estado_entrega` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_estado_entrega`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Tabla entrega
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS entrega (
  `id_entrega` INT NOT NULL AUTO_INCREMENT,
  `nro_seguimiento` VARCHAR(45) NOT NULL,
  `domicilio_entrega` VARCHAR(45) NOT NULL,
  `observaciones` VARCHAR(150) NULL,
  `id_compra` INT NULL DEFAULT NULL,
  `id_estado_entrega` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_entrega`),
  INDEX `compra_idx` (`id_compra` ASC),
  INDEX `estado_entrega_idx` (`id_estado_entrega` ASC),
  CONSTRAINT `compra`
    FOREIGN KEY (`id_compra`)
    REFERENCES `bdtienda`.`compra` (`id_compra`),
  CONSTRAINT `estado_entrega`
    FOREIGN KEY (`id_estado_entrega`)
    REFERENCES `bdtienda`.`tipo_estado_entrega` (`id_estado_entrega`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_general_ci;


-- -----------------------------------------------------
-- Insert --
-- -----------------------------------------------------
INSERT INTO tipo_color VALUES (1,'Rojo'),(2,'Azul'),(3,'Blanco'),(4,'Negro'),(5,'Amarillo');
INSERT INTO tipo_estado_entrega VALUES (1,'En preparación'),(2,'Despachado'),(3,'Entregado');
INSERT INTO tipo_estilo VALUES (1,'Montaña'),(2,'Ruta'),(3,'Eléctrica'),(4,'Niños'),(5,'Urbana');
INSERT INTO tipo_marca VALUES (1,'Specialized'),(2,'Scott'),(3,'Raleigh'),(4,'Venzo');
INSERT INTO tipo_material VALUES (1,'Hierro'),(2,'Aluminio'),(3,'Carbono');
INSERT INTO tipo_modo_pago VALUES (1,'Mercado Pago'),(2,'Tarjeta Débito'),(3, 'Tarjeta Crédito'),(4,'Transferencia Bancaria');
INSERT INTO tipo_rodado VALUES (1,'14'),(2,'16'),(3,'20'),(4,'26'),(5,'28'),(6,'29');
INSERT INTO tipo_rol VALUES (1,'Administrador'),(2,'Cliente');

-- -----------------------------------------------------
-- Crear dos bicicletas
-- -----------------------------------------------------
INSERT INTO producto 
(modelo, precio, stock, detalle, id_marca, id_rodado, id_estilo, id_material, id_color)
VALUES 
('Raptor', 300000, 20, 'Venzo Raptor es la bicicleta de gama media que ...', 4, 6, 1, 2, 1),
('Eolo', 149000, 100, 'Venzo Eolo revoluciona el mercado logrando que  ...', 4, 6, 1, 2, 3),
('M2.0', 200000, 75, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit ...', 3, 6, 1, 2, 4);
