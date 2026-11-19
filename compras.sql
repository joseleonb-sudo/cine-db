CREATE TABLE compras (
    id             SERIAL PRIMARY KEY,
    funcion_id     INTEGER       NOT NULL REFERENCES funciones(id),
    nombre_cliente VARCHAR(120)  NOT NULL,
    cantidad       INTEGER       NOT NULL CHECK (cantidad > 0),
    total          NUMERIC(12,2) NOT NULL,
    fecha_compra   TIMESTAMP     NOT NULL DEFAULT NOW()
);
