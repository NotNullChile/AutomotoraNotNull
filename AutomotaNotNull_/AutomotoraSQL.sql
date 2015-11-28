
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

CREATE TABLE mantenciones
(
idMantenciones INT,
tipoMantencion VARCHAR(40),
valor INT,
CONSTRAINT pk_mantenciones PRIMARY KEY (idMantenciones)
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

INSERT INTO vehiculos VALUES ('HZ-GG-20', 123456789, 123456789, 'SBZ', 'Sedan','Rojo',0,1,'foto');

SELECT * FROM vehiculos;