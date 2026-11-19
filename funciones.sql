CREATE TABLE funciones (
    id           SERIAL PRIMARY KEY,
    pelicula_id  INTEGER       NOT NULL REFERENCES peliculas(id),
    fecha_hora   TIMESTAMP     NOT NULL,
    sala         VARCHAR(30)   NOT NULL,
    precio       NUMERIC(10,2) NOT NULL CHECK (precio > 0),
    cupos        INTEGER       NOT NULL CHECK (cupos >= 0)
);
