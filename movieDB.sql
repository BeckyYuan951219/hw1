-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS studios;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS castings;
DROP TABLE IF EXISTS agents;
DROP TABLE IF EXISTS representing;

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  year_released TEXT,
  MAPP_rating TEXT,
  studio_id INTEGER
);

CREATE TABLE studios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  studio_name TEXT
);

CREATE TABLE actors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  actor_name TEXT,
  agent_id INTEGER
);

CREATE TABLE castings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  movie_id INTEGER,
  actor_id INTEGER,
  character_name TEXT
);

CREATE TABLE agents (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  agent_name TEXT
);

CREATE TABLE representing (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  agent_id INTEGER,
  actor_id INTEGER
);

