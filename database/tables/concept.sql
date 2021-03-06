CREATE TABLE bereikbaarheidskaart.concept (
    id SERIAL PRIMARY KEY,
    -- invulvelden

    -- metadata velden
    naam_aanmaker varchar(255) NULL,
    naam_bewerker varchar(255) NULL,
    datum_aangemaakt timestamp(0) NOT NULL DEFAULT now(),
    datum_gewijzigd timestamp(0) NULL,
    -- geometrie
    geom geometry(POLYGON, 28992) NOT NULL
);

CREATE INDEX sidx_concept_geom ON bereikbaarheidskaart.concept USING gist (geom);