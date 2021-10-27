CREATE TABLE usuarios(
id          INT(11) AUTO_INCREMENT NOT NULL,
nombre      VARCHAR(100) NOT NULL,
email       VARCHAR(100) NOT NULL,
password    VARCHAR(100) NOT NULL,
direccion   VARCHAR(255),
/* para llave primaria: */
CONSTRAINT pk_usuario PRIMARY KEY(id)
);