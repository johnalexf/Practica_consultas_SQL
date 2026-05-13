-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 06-10-2015 a las 20:27:43
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `ventasuno`
-- 
CREATE DATABASE `ventasuno` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ventasuno`;

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `cargo`
-- 

CREATE TABLE `cargo` (
  `cod_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `desc_cargo` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_cargo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `cargo`
-- 

INSERT INTO `cargo` VALUES (1, 'gerente oficina grado 1');
INSERT INTO `cargo` VALUES (2, 'jefe de area');
INSERT INTO `cargo` VALUES (3, 'secretaria');
INSERT INTO `cargo` VALUES (4, 'mensajero');
INSERT INTO `cargo` VALUES (5, 'consuctor');
INSERT INTO `cargo` VALUES (6, 'profesional a');
INSERT INTO `cargo` VALUES (7, 'profesional b');
INSERT INTO `cargo` VALUES (8, 'abogado ');
INSERT INTO `cargo` VALUES (9, 'diseñador');
INSERT INTO `cargo` VALUES (10, 'vendedor');
INSERT INTO `cargo` VALUES (11, 'cajero');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ciudad`
-- 

CREATE TABLE `ciudad` (
  `cod_ciudad` int(11) NOT NULL AUTO_INCREMENT,
  `desc_ciudad` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_ciudad`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `ciudad`
-- 

INSERT INTO `ciudad` VALUES (1, 'bogota');
INSERT INTO `ciudad` VALUES (2, 'cali');
INSERT INTO `ciudad` VALUES (3, 'medellin');
INSERT INTO `ciudad` VALUES (4, 'zipa');
INSERT INTO `ciudad` VALUES (5, 'pacho');
INSERT INTO `ciudad` VALUES (6, 'el peñon');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `clientes`
-- 

CREATE TABLE `clientes` (
  `cod_cli` int(11) NOT NULL AUTO_INCREMENT,
  `identificacion_cli` int(11) NOT NULL,
  `nombres_cli` varchar(45) NOT NULL,
  `apellidos_cli` varchar(45) NOT NULL,
  `cod_empleado_cli` int(11) NOT NULL,
  `montocredito_cli` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`cod_cli`),
  KEY `cod_empleado_cliente_idx` (`cod_empleado_cli`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `clientes`
-- 

INSERT INTO `clientes` VALUES (1, 4578902, 'martha patricia', 'cortes reyes', 1, 3000000);
INSERT INTO `clientes` VALUES (2, 125456, 'emilio', 'agudelo santillana', 2, 250000);
INSERT INTO `clientes` VALUES (3, 11356789, 'patricia ', 'ramirez bernal', 3, 1254560);
INSERT INTO `clientes` VALUES (4, 4578962, 'ajelandra maria', 'cardenas gonzalez', 4, 4587890);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `directivojefe`
-- 

CREATE TABLE `directivojefe` (
  `cod_direcjefe` int(11) NOT NULL AUTO_INCREMENT,
  `identificacion_direcjefe` int(11) DEFAULT NULL,
  `nombre_direcjefe` varchar(45) DEFAULT NULL,
  `apellidos_directjefe` varchar(45) DEFAULT NULL,
  `cod_cargo_direcjefe` int(11) NOT NULL,
  PRIMARY KEY (`cod_direcjefe`),
  KEY `cod_cargo_direcjefe_idx` (`cod_cargo_direcjefe`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Volcar la base de datos para la tabla `directivojefe`
-- 

INSERT INTO `directivojefe` VALUES (1, 11425368, 'carlos albero ', 'lopez perez', 1);
INSERT INTO `directivojefe` VALUES (2, 25458698, 'martha lucia ', 'sierra angarita', 2);
INSERT INTO `directivojefe` VALUES (3, 124578, 'miryam ', 'cabrera vega', 1);
INSERT INTO `directivojefe` VALUES (4, 458789, 'alexandra ', 'rivera ruiz', 3);
INSERT INTO `directivojefe` VALUES (5, 2567893, 'martha ', 'gomez pinto', 4);
INSERT INTO `directivojefe` VALUES (6, 1245789, 'juan carlos ', 'espitia rojas', 2);
INSERT INTO `directivojefe` VALUES (7, 365987, 'jorge ', 'rojas espitia', 4);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empleado`
-- 

CREATE TABLE `empleado` (
  `cod_empleado` int(11) NOT NULL AUTO_INCREMENT COMMENT 'llave primaria de la tabla',
  `identi_empleado` varchar(45) NOT NULL COMMENT 'número identificación del empleado',
  `nombres_empleado` varchar(45) NOT NULL,
  `apellidos_empleado` varchar(45) NOT NULL,
  `edad_empleado` varchar(45) DEFAULT NULL,
  `cod_oficina_empleado` int(11) NOT NULL COMMENT 'llave foranea que relaciona la tabla empleado con la tabla Oficina',
  `cod_cargo_empleado` int(11) NOT NULL COMMENT 'llave foranea que relaciona esta tabla con la tabla cargo',
  `fechaIngreso_empleado` date DEFAULT NULL,
  `cod_directivojefe_empleado` int(11) NOT NULL,
  `ventasminimas_empleado` decimal(10,0) DEFAULT NULL COMMENT 'ventas minimas o cuota minima qiue debe cumplir el empleado en un año',
  `ventastotales_empleado` decimal(10,0) DEFAULT NULL COMMENT 'son las ventas totales del empleado en un año',
  PRIMARY KEY (`cod_empleado`),
  KEY `cod_oficina_empleado_idx` (`cod_oficina_empleado`),
  KEY `cod_cargo_empleado_idx` (`cod_cargo_empleado`),
  KEY `cod_directivojefe_empleado_idx` (`cod_directivojefe_empleado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `empleado`
-- 

INSERT INTO `empleado` VALUES (1, '45789612', 'marco tulio ', 'ruiz rojas', '45', 1, 2, '2001-02-25', 2, 250000, 350000);
INSERT INTO `empleado` VALUES (2, '79452621', 'lucia ', 'reyes anzola', '35', 2, 1, '1995-05-20', 2, 450000, 500000);
INSERT INTO `empleado` VALUES (3, '11421365', 'rosana', 'perez ortiz', '36', 4, 2, '1997-03-28', 1, 250000, 280000);
INSERT INTO `empleado` VALUES (4, '11325456', 'maria ines', 'lara jara', '39', 3, 3, '2001-01-20', 3, 250000, 278000);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `fabricante`
-- 

CREATE TABLE `fabricante` (
  `cod_fabricante` int(11) NOT NULL AUTO_INCREMENT,
  `desc_fabricante` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_fabricante`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `fabricante`
-- 

INSERT INTO `fabricante` VALUES (1, 'coltex');
INSERT INTO `fabricante` VALUES (2, 'casa dulce');
INSERT INTO `fabricante` VALUES (3, 'la reina');
INSERT INTO `fabricante` VALUES (4, 'tres en uno');
INSERT INTO `fabricante` VALUES (5, 'faraones');
INSERT INTO `fabricante` VALUES (6, 'liguilla');
INSERT INTO `fabricante` VALUES (7, 'la muñeca');
INSERT INTO `fabricante` VALUES (8, 'el sauco');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `oficinas`
-- 

CREATE TABLE `oficinas` (
  `cod_oficina` int(11) NOT NULL AUTO_INCREMENT,
  `cod_ciudad_oficina` int(11) NOT NULL,
  `cod_region_oficina` int(11) NOT NULL,
  `cod_directivojefe_oficina` int(11) NOT NULL,
  `ventasmininas_oficina` decimal(10,0) NOT NULL,
  `ventasTotales_oficina` decimal(10,0) NOT NULL,
  PRIMARY KEY (`cod_oficina`),
  KEY `cod_ciudad_oficina_idx` (`cod_ciudad_oficina`),
  KEY `cod_region_oficina_idx` (`cod_region_oficina`),
  KEY `cod_directivojefe_oficina_idx` (`cod_directivojefe_oficina`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `oficinas`
-- 

INSERT INTO `oficinas` VALUES (1, 1, 1, 1, 1250000, 2000000);
INSERT INTO `oficinas` VALUES (2, 2, 2, 1, 3250000, 4200000);
INSERT INTO `oficinas` VALUES (3, 3, 2, 2, 1025478, 254690);
INSERT INTO `oficinas` VALUES (4, 4, 3, 3, 4507896, 4587966);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `pedidos`
-- 

CREATE TABLE `pedidos` (
  `cod_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `numero_pedido` int(11) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `cod_cliente_pedido` int(11) NOT NULL,
  `cod_empleado_pedido` int(11) NOT NULL,
  `desc_producto_pedido` int(11) NOT NULL,
  `cantidad_pedido` decimal(10,0) DEFAULT NULL,
  `valor_pedido` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`cod_pedido`),
  KEY `cod_cliente_pedido_idx` (`cod_cliente_pedido`),
  KEY `cod_empleado_pedido_idx` (`cod_empleado_pedido`),
  KEY `cod_producto_pedido_idx` (`desc_producto_pedido`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `pedidos`
-- 

INSERT INTO `pedidos` VALUES (1, 100, '2005-06-26', 1, 2, 1, 10, 450000);
INSERT INTO `pedidos` VALUES (2, 101, '2015-05-21', 2, 1, 2, 11, 325000);
INSERT INTO `pedidos` VALUES (3, 102, '2014-06-03', 3, 2, 1, 5, 150000);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `productos`
-- 

CREATE TABLE `productos` (
  `cod_producto` int(11) NOT NULL AUTO_INCREMENT,
  `codigobarra_producto` varchar(45) NOT NULL,
  `descrip_producto` varchar(45) NOT NULL,
  `precio_producto` decimal(10,0) NOT NULL,
  `existencia_producto` int(11) NOT NULL,
  `cod_fabricante_producto` int(11) NOT NULL,
  PRIMARY KEY (`cod_producto`),
  KEY `cod_fabricante_producto_idx` (`cod_fabricante_producto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `productos`
-- 

INSERT INTO `productos` VALUES (1, '1255ab', 'limones amarillos', 125, 250, 1);
INSERT INTO `productos` VALUES (2, '123wer', 'papas griss', 300, 241, 2);
INSERT INTO `productos` VALUES (3, 'ab145', 'pastas ', 721, 45, 1);
INSERT INTO `productos` VALUES (4, 'cd2456', 'pepinillos', 452, 48, 2);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `region`
-- 

CREATE TABLE `region` (
  `cod_region` int(11) NOT NULL AUTO_INCREMENT,
  `desc_region` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_region`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `region`
-- 

INSERT INTO `region` VALUES (1, 'caribe');
INSERT INTO `region` VALUES (2, 'central');
INSERT INTO `region` VALUES (3, 'oriental');
INSERT INTO `region` VALUES (4, 'sur');
INSERT INTO `region` VALUES (5, 'occidental');

-- 
-- Filtros para las tablas descargadas (dump)
-- 

-- 
-- Filtros para la tabla `clientes`
-- 
ALTER TABLE `clientes`
  ADD CONSTRAINT `cod_empleado_cliente` FOREIGN KEY (`cod_empleado_cli`) REFERENCES `empleado` (`cod_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `directivojefe`
-- 
ALTER TABLE `directivojefe`
  ADD CONSTRAINT `cod_cargo_direcjefe` FOREIGN KEY (`cod_cargo_direcjefe`) REFERENCES `cargo` (`cod_cargo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `empleado`
-- 
ALTER TABLE `empleado`
  ADD CONSTRAINT `cod_cargo_empleado` FOREIGN KEY (`cod_cargo_empleado`) REFERENCES `cargo` (`cod_cargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cod_directivojefe_empleado` FOREIGN KEY (`cod_directivojefe_empleado`) REFERENCES `directivojefe` (`cod_direcjefe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cod_oficina_empleado` FOREIGN KEY (`cod_oficina_empleado`) REFERENCES `oficinas` (`cod_oficina`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `oficinas`
-- 
ALTER TABLE `oficinas`
  ADD CONSTRAINT `cod_ciudad_oficina` FOREIGN KEY (`cod_ciudad_oficina`) REFERENCES `ciudad` (`cod_ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cod_directivojefe_oficina` FOREIGN KEY (`cod_directivojefe_oficina`) REFERENCES `directivojefe` (`cod_direcjefe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cod_region_oficina` FOREIGN KEY (`cod_region_oficina`) REFERENCES `region` (`cod_region`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `pedidos`
-- 
ALTER TABLE `pedidos`
  ADD CONSTRAINT `cod_cliente_pedido` FOREIGN KEY (`cod_cliente_pedido`) REFERENCES `clientes` (`cod_cli`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cod_empleado_pedido` FOREIGN KEY (`cod_empleado_pedido`) REFERENCES `empleado` (`cod_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cod_producto_pedido` FOREIGN KEY (`desc_producto_pedido`) REFERENCES `productos` (`cod_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `productos`
-- 
ALTER TABLE `productos`
  ADD CONSTRAINT `cod_fabricante_producto` FOREIGN KEY (`cod_fabricante_producto`) REFERENCES `fabricante` (`cod_fabricante`) ON DELETE NO ACTION ON UPDATE NO ACTION;
