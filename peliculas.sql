CREATE TABLE peliculas (
    id            SERIAL PRIMARY KEY,
    titulo        VARCHAR(150) NOT NULL,
    genero        VARCHAR(60)  NOT NULL,
    duracion_min  INTEGER      NOT NULL CHECK (duracion_min > 0),
    clasificacion VARCHAR(20)  NOT NULL
);
