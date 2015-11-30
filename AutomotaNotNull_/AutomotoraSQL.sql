DROP DATABASE automotoraNotNull;
CREATE DATABASE automotoraNotNull;
GO
USE automotoraNotNull;
GO

CREATE TABLE usuarios
(
rutUsuario VARCHAR(20),
clave VARCHAR(10)
CONSTRAINT pk_rutUsuario PRIMARY KEY (rutUsuario)
);

CREATE TABLE repuestos
(
idRepuesto INT,
nombreRepuesto VARCHAR(60),
stockRepuesto INT,
valorRepuesto INT,
CONSTRAINT pk_repuesto PRIMARY KEY (idRepuesto)
);

CREATE TABLE compra
(
idCompra INT,
proveedor VARCHAR(50),
valorVehiculo INT
CONSTRAINT pk_idCompra PRIMARY KEY (idCompra)
);

CREATE TABLE vehiculos
(
patenteVehiculo VARCHAR(10),
numeroMotor INT UNIQUE NOT NULL,
numeroChasis INT UNIQUE NOT NULL,
modelo VARCHAR(40),
tipoVehiculo varchar(40),
color VARCHAR(20),
estado BIT /* 0 = FALSE - 1 TRUE */,
idCompra INT,
CONSTRAINT pk_patenteVehiculo PRIMARY KEY (patenteVehiculo),
CONSTRAINT fk_vehiculo_compra FOREIGN KEY (idCompra) REFERENCES compra (idCompra)
);

CREATE TABLE clientes
(
rutCliente INT,
nombreCliente VARCHAR(50) NOT NULL,
fechaNacimiento DATE NOT NULL,
direccion VARCHAR(50) NOT NULL,
CONSTRAINT pk_rutClientes PRIMARY KEY (rutCliente)
);

CREATE TABLE vehiculo_cliente
(
idCliente INT,
patenteVehiculo VARCHAR(10),
CONSTRAINT fk_cliente_vehiculo FOREIGN KEY(idCliente) REFERENCES clientes(rutCliente),
CONSTRAINT fk_vehiculo_cliente FOREIGN KEY(patenteVehiculo) REFERENCES vehiculos(patenteVehiculo)
);
SELECT * FROM vehiculo_cliente;
CREATE TABLE mantenciones
(
idMantenciones INT,
tipoMantencion VARCHAR(40),
valor INT,
rutCliente INT,
patenteVehiculo VARCHAR(10),
CONSTRAINT pk_mantenciones PRIMARY KEY (idMantenciones),
CONSTRAINT fk_mantenciones_cliente FOREIGN KEY(rutCliente) REFERENCES clientes(rutCliente),
CONSTRAINT fk_mantenciones_vehiculo FOREIGN KEY(patenteVehiculo) REFERENCES vehiculos(patenteVehiculo)
);

CREATE TABLE repuestos_mantenciones
(
idRepuesto INT,
idMantenciones INT,
CONSTRAINT fk_repuesto_mantenciones FOREIGN KEY(idRepuesto) REFERENCES repuestos(idRepuesto),
CONSTRAINT fk_mantenciones_repuesto FOREIGN KEY(idMantenciones) REFERENCES mantenciones(idMantenciones)
);

CREATE TABLE venta
(
idVenta INT,
idCliente INT,
patenteVehiculo VARCHAR(10),
valorVenta INT,
CONSTRAINT pk_idVenta PRIMARY KEY (idVenta),
CONSTRAINT fk_venta_cliente FOREIGN KEY(idCliente) REFERENCES clientes(rutCliente),
CONSTRAINT fk_venta_vehiculo FOREIGN KEY(patenteVehiculo) REFERENCES vehiculos(patenteVehiculo)
);



/** ALTER **/
ALTER TABLE usuarios ADD rol INT; /* 0 = Cliente - 1 = Admin*/
ALTER TABLE compra ADD fechaCompra DATE;
ALTER TABLE venta ADD fechaVenta DATE;
ALTER TABLE vehiculos ADD urlFoto VARCHAR(50);


/** INSERT **/
/** INSERT USUARIOS **/

INSERT INTO usuarios VALUES ('191331117','rick',1);
INSERT INTO usuarios VALUES ('19133111','rick',0);

/** INSERT REPUESTO **/

INSERT INTO repuestos VALUES (1,'Bujias',50,2500);

/** INSERT MANTENCIONES **/

INSERT INTO mantenciones VALUES (1,'Arreglo Motor',60000);

/** INSERT COMPRA **/

INSERT INTO COMPRA VALUES (1,'Subaru',80000,'2015-01-01');

/** INSERT VEHICULO **/

INSERT INTO vehiculos VALUES ('AZ-BY-1', 123456789, 123456789, 'McLaren', 'Deportivo','Rojo',1,0,'/imagesAuto/MCLaren.jpg');
INSERT INTO vehiculos VALUES ('AZ-BY-2', 23456789, 23456789, 'Audi', 'Deportivo','Blanco',1,0,'/imagesAuto/Audi.jpg');
INSERT INTO vehiculos VALUES ('AZ-BY-3', 3456789, 3456789, 'Chevrolet', 'Sedan','Blanco',1,0,'/imagesAuto/Chevrolet.jpg');
INSERT INTO vehiculos VALUES ('AZ-BY-4', 456789, 456789, 'Ford', 'Todo Terreno','Blanco',1,0,'/imagesAuto/Ford.jpg');
INSERT INTO vehiculos VALUES ('AZ-BY-5', 56789, 56789, 'Furgon', 'Furgon','Varios',1,0,'/imagesAuto/Furgon.jpg');

SELECT m.idMantenciones AS 'ID Mantención', m.tipoMantencion AS 'Descripción', m.valor AS 'Valor', c.nombreCliente AS 'Cliente', m.patenteVehiculo AS 'Patente'
FROM mantenciones m
INNER JOIN clientes c ON m.rutCliente = c.rutCliente;

SELECT * FROM vehiculos;
SELECT * FROM usuarios;
SELECT * FROM clientes;
SELECT * FROM vehiculo_cliente;
SELECT * FROM repuestos;

/** lOGIN **/
SELECT * FROM usuarios WHERE rutUsuario = '19133111' AND clave = 'rick' AND rol = 0;

/** Ver Mis Vehiculos **/


SELECT patenteVehiculo FROM vehiculo_cliente WHERE idCliente = 19133111;
SELECT * FROM vehiculos WHERE patenteVehiculo = 'gsg';

/** Listado Vehiculo **/
UPDATE vehiculos SET estado = 0 WHERE patenteVehiculo = 'HB-HZ-30';
SELECT * FROM vehiculos WHERE urlFoto IS NOT NULL;
SELECT * FROM vehiculos WHERE estado = 0;
UPDATE vehiculos SET estado = 1, urlFoto = @urlFoto  WHERE patenteVehiculo = @patente;

SELECT * FROM vehiculo_cliente WHERE idCliente=19133111;
DELETE FROM vehiculo_cliente WHERE patenteVehiculo = 'AZ-BY-1';

/** Mis Mantenciones **/ 

SELECT * FROM mantenciones WHERE rutCliente = 19133111;

/* Nombre Cliente */

SELECT nombreCliente FROM clientes WHERE rutCliente =1;

SELECT * FROM usuarios;
SELECT * FROM clientes;
DELETE FROM vehiculos WHERE patenteVehiculo = 'aa';
DELETE FROM vehiculo_cliente;

DELETE FROM vehiculo_cliente WHERE rutCliente = 1;
DELETE FROM mantenciones WHERE rutCliente = 1;
DELETE FROM clientes WHERE rutCliente = 1;

DELETE FROM usuarios WHERE rutUsuario = 19133111;
DELETE FROM venta WHERE idCliente = 19133111;
DELETE FROM vehiculo_cliente WHERE idCliente = 19133111;
DELETE FROM mantenciones WHERE rutCliente = 19133111;
DELETE FROM clientes WHERE rutCliente = 19133111;

SELECT * FROM repuestos;

/** REPUESTO **/
SELECT stockRepuesto FROM repuestos WHERE idRepuesto= 1;
UPDATE repuestos SET stockRepuesto = (SELECT stockRepuesto FROM repuestos WHERE idRepuesto=1) - 1 WHERE idRepuesto = 1;