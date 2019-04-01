DROP TABLE IF EXISTS conductor CASCADE;
CREATE TABLE conductor
(
	id_conductor VARCHAR(30) PRIMARY KEY,
	cedula VARCHAR(30) NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	direccion VARCHAR(30) NOT NULL,
	telefono VARCHAR(30) NOT NULL,
	ubicacion VARCHAR(30) NOT NULL,
	estado VARCHAR(1) NOT NULL,
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
	numeroKm INT

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
	id_conductor VARCHAR(30) NOT NULL,
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
	id_conductor VARCHAR(30) NOT NULL,
	placa VARCHAR(30) NOT NULL,

	FOREIGN KEY (id_conductor) REFERENCES conductor (id_conductor) ON DELETE CASCADE,
	FOREIGN KEY (placa) REFERENCES carro (placa) ON DELETE CASCADE
	
);