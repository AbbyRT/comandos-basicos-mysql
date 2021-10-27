/* renombrar tabla */
ALTER TABLE usuarios RENAME TO users;
/* cambiar el nombre de una columna, tmabien se ouede cambiar e l
tipo de dato */
ALTER TABLE usuarios CHANGE dir direccion VARCHAR(255);
/* agregar columnas */
ALTER TABLE usuarios ADD edad INT NOT NULL;
/* borrar columnasa */
ALTER TABLE usuarios DROP edad;