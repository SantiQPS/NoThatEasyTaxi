DROP TABLE IF EXISTS conductor CASCADE;
CREATE TABLE conductor
(
	id_conductor SERIAL PRIMARY KEY,
	cedula VARCHAR(30) NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	direccion VARCHAR(30) NOT NULL,
	telefono VARCHAR(30) NOT NULL,
	ubicacion VARCHAR(30) NOT NULL,
	estado VARCHAR(4) NOT NULL,
	kilometros VARCHAR(30) NOT NULL

);

DROP TABLE IF EXISTS carro CASCADE;
CREATE TABLE carro
(
	placa VARCHAR(30) PRIMARY KEY,
	modelo VARCHAR(30),
	marca VARCHAR(30) NOT NULL,
	año VARCHAR(60) NOT NULL,
	baul VARCHAR(30),
	soat VARCHAR(30) NOT NULL
	 
);

DROP TABLE IF EXISTS servicio CASCADE;
CREATE TABLE servicio
(
	numeroServicio SERIAL PRIMARY KEY,
	estrellas VARCHAR(30),
	origen VARCHAR(30),
	destino VARCHAR(30),
	reporte VARCHAR(30), 
	costo VARCHAR(30),
	numeroKm VARCHAR(30)

);

DROP TABLE IF EXISTS usuario CASCADE;
CREATE TABLE usuario
(
	celular VARCHAR(30) PRIMARY KEY,
	nombre VARCHAR(30),
	kilometros VARCHAR(30),
	tarjeta VARCHAR(30)

);

DROP TABLE IF EXISTS favoritos CASCADE;
CREATE TABLE favoritos	
(
	celular VARCHAR(30) NOT NULL,
	direccion VARCHAR(30) NOT NULL,
	
	FOREIGN KEY (celular) REFERENCES usuario (celular) ON DELETE CASCADE
);

DROP TABLE IF EXISTS servicioConductor CASCADE;
CREATE TABLE servicioConductor
(
	id_conductor INT NOT NULL,
	numeroServicio INT NOT NULL,

	FOREIGN KEY (id_conductor) REFERENCES conductor (id_conductor) ON DELETE CASCADE,
	FOREIGN KEY (numeroServicio) REFERENCES servicio (numeroServicio) ON DELETE CASCADE
	
);

DROP TABLE IF EXISTS servicioUsuario CASCADE;
CREATE TABLE servicioUsuario
(
	celular VARCHAR(30) NOT NULL,
	numeroServicio INT NOT NULL,

	FOREIGN KEY (celular) REFERENCES usuario (celular) ON DELETE CASCADE,
	FOREIGN KEY (numeroServicio) REFERENCES servicio (numeroServicio) ON DELETE CASCADE
	
);

DROP TABLE IF EXISTS conductorCarro CASCADE;
CREATE TABLE conductorCarro
(
	id_conductor INT NOT NULL,
	placa VARCHAR(30) NOT NULL,

	FOREIGN KEY (id_conductor) REFERENCES conductor (id_conductor) ON DELETE CASCADE,
	FOREIGN KEY (placa) REFERENCES carro (placa) ON DELETE CASCADE
	
);

INSERT INTO conductor(cedula,nombre,direccion,telefono,ubicacion,estado,kilometros) VALUES ('1144102135', 'Francisco Perez','carrera 35 # 13-69', '3486598', 'carrera 80 # 40-20', 'D', '40');
INSERT INTO conductor(cedula,nombre,direccion,telefono,ubicacion,estado,kilometros) VALUES ('11442509', 'Juan Pablos Rendon','calle 13 # 40-10', '4846578', 'carrera 5 # 10-54', 'N', '500');

INSERT INTO carro VALUES ('fgh123', 'mazda3','mazda', '2018', 'grande', '123456789');
INSERT INTO carro VALUES ('iop853', 'picanto','KIA', '2018', 'mediano', '987654321');

INSERT INTO servicio(estrellas, origen, destino,reporte,costo, numeroKm) VALUES ('5', 'carrera 21 # 9-45','calle 7 # 5-84', 'bueno', '10000', '5');
INSERT INTO servicio(estrellas, origen, destino,reporte,costo, numeroKm) VALUES ('3', 'calle 13 # 8-51','carrera 100 # 14-9', 'regular', '16500', '8');

INSERT INTO usuario VALUES ('3146207629', 'Santiago Quintero','100', '1564982645217562');
INSERT INTO usuario VALUES ('3168878200', 'Arturo Calle','59', '96547852012547863');

INSERT INTO favoritos VALUES ('3146207629', 'carrera 53a # 34b-53');
INSERT INTO favoritos VALUES ('3146207629', 'carrera 48 # 12-35');
INSERT INTO favoritos VALUES ('3168878200', 'carrera 80 # 65-12');

INSERT INTO servicioConductor VALUES ('1', '2');
INSERT INTO servicioConductor VALUES ('2', '1');

INSERT INTO servicioUsuario VALUES ('3146207629', '1');
INSERT INTO servicioUsuario VALUES ('3168878200', '2');

INSERT INTO conductorCarro VALUES ('1', 'fgh123');
INSERT INTO conductorCarro VALUES ('2', 'iop853');