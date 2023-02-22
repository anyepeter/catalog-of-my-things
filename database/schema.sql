CREATE TABLE genre (
  id SERIAL PRIMARY KEY,
  name varchar(250) NOT NULL
);

CREATE TABLE source (
  id SERIAL PRIMARY KEY,
  source varchar(250) NOT NULL
);

CREATE TABLE label (
  id SERIAL PRIMARY KEY,
  title varchar(250) NOT NULL,
  color varchar(250) NOT NULL
);

CREATE TABLE author (
  id SERIAL PRIMARY KEY,
  firstname varchar(250) NOT NULL,
  lastname varchar(250) NOT NULL
);

CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  genre varchar(250) DEFAULT NULL,
  author varchar(250) DEFAULT NULL,
  source varchar(250) DEFAULT NULL,
  label varchar(250) DEFAULT NULL,
  publish_date date NOT NULL,
  archived boolean,

  CONSTRAINT fk_genre FOREIGN KEY(genre_id) REFERENCES genre(id),
  CONSTRAINT fk_label FOREIGN KEY(label_id) REFERENCES label(id),
  CONSTRAINT fk_author FOREIGN KEY(author_id) REFERENCES author(id),
  CONSTRAINT fk_source FOREIGN KEY(source_id) REFERENCES source(id)
);

CREATE TABLE games (
  id SERIAL PRIMARY KEY,
  name varchar(250) NOT NULL,
  publish_date DATE NOT NULL,
  multiplayer BOOLEAN NOT NULL,
  last_played_at TIMESTAMP NOT NULL
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title varchar(250) NOT NULL,
  publish_date DATE NOT NULL,
  publisher varchar(250) NOT NULL,
  cover_state varchar(250) NOT NULL
);

CREATE TABLE music_album (
  id SERIAL PRIMARY KEY,
  title varchar(250) NOT NULL,
  publish_date DATE NOT NULL,
  on_spotify BOOLEAN NOT NULL
);

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  name varchar(250) NOT NULL,
  publish_date DATE NOT NULL,
  silent BOOLEAN NOT NULL
);
