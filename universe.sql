--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_pretty boolean,
    description text,
    random_number integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    description text,
    is_pretty boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: not_so_funny; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.not_so_funny (
    name character varying(30) NOT NULL,
    not_so_funny_id integer NOT NULL,
    description text
);


ALTER TABLE public.not_so_funny OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    number_of_moons integer,
    full_rotation_in_days numeric,
    name character varying(30) NOT NULL,
    description text,
    supports_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    number_of_planets integer,
    name character varying(30) NOT NULL,
    is_pretty boolean,
    galaxy_id integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 'Our home galaxy', 42);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', true, 'A neighboring galaxy', 1337);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 'A small galaxy', 1234);
INSERT INTO public.galaxy VALUES (4, 'Orion', true, 'A large galaxy', 654321);
INSERT INTO public.galaxy VALUES (5, 'Canis Major', true, 'A bright galaxy', 987654);
INSERT INTO public.galaxy VALUES (6, 'Ursa Major', false, 'A dark galaxy', 321654);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 'El único satélite natural de la Tierra.', true);
INSERT INTO public.moon VALUES (2, 'Fobos', 4, 'El satélite más cercano a Marte.', false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 'El satélite más lejano de Marte.', false);
INSERT INTO public.moon VALUES (4, 'Io', 5, 'El satélite más activo de Júpiter.', true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 'El satélite helado de Júpiter.', true);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 5, 'El satélite más grande del sistema solar.', true);
INSERT INTO public.moon VALUES (7, 'Calisto', 5, 'El satélite más oscuro del sistema solar.', false);
INSERT INTO public.moon VALUES (8, 'Titán', 6, 'El satélite más grande de Saturno.', true);
INSERT INTO public.moon VALUES (9, 'Iapetus', 6, 'El satélite con dos caras.', true);
INSERT INTO public.moon VALUES (10, 'Rea', 6, 'El satélite más denso de Saturno.', false);
INSERT INTO public.moon VALUES (11, 'Dione', 6, 'El satélite más brillante de Saturno.', true);
INSERT INTO public.moon VALUES (12, 'Tethys', 6, 'El satélite más pequeño de Saturno.', false);
INSERT INTO public.moon VALUES (13, 'Ariel', 8, 'Un satélite de Urano.', true);
INSERT INTO public.moon VALUES (14, 'Miranda', 8, 'Un satélite de Urano.', true);
INSERT INTO public.moon VALUES (15, 'Umbriel', 8, 'Un satélite de Urano.', false);
INSERT INTO public.moon VALUES (16, 'Titania', 8, 'Un satélite de Urano.', true);
INSERT INTO public.moon VALUES (17, 'Oberon', 8, 'Un satélite de Urano.', true);
INSERT INTO public.moon VALUES (18, 'Triton', 7, 'Un satélite de Neptuno.', true);
INSERT INTO public.moon VALUES (19, 'Nereid', 7, 'Un satélite de Neptuno.', false);
INSERT INTO public.moon VALUES (20, 'Triton', 7, 'Un satélite de Neptuno.', true);


--
-- Data for Name: not_so_funny; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.not_so_funny VALUES ('pez sin ojos', 1, 'un juego de palabras que no tiene sentido.');
INSERT INTO public.not_so_funny VALUES ('marrón y pegajoso', 2, 'un chiste que se ha contado tantas veces que ya no es divertido.');
INSERT INTO public.not_so_funny VALUES ('el pollo', 3, 'un chiste que simplemente no es divertido.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 0, 243, 'Mercury', 'The closest planet to the Sun', false, 1);
INSERT INTO public.planet VALUES (2, 0, 59.6, 'Venus', 'The hottest planet in the Solar System', false, 1);
INSERT INTO public.planet VALUES (3, 0, 23.93, 'Earth', 'The only planet known to support life', true, 1);
INSERT INTO public.planet VALUES (4, 1, 29.53, 'Mars', 'The fourth planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (5, 2, 165.2, 'Jupiter', 'The largest planet in the Solar System', false, 1);
INSERT INTO public.planet VALUES (6, 79, 10.65, 'Saturn', 'The second-largest planet in the Solar System', false, 1);
INSERT INTO public.planet VALUES (7, 82, 17.24, 'Uranus', 'The seventh planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (8, 27, 16.08, 'Neptune', 'The eighth and farthest planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (9, 1, 87.96, 'Ceres', 'A dwarf planet in the asteroid belt', false, 1);
INSERT INTO public.planet VALUES (10, 0, 365.25, 'Pluto', 'A dwarf planet in the Kuiper belt', false, 1);
INSERT INTO public.planet VALUES (11, 1, 224.7, 'Haumea', 'A dwarf planet in the Kuiper belt', false, 1);
INSERT INTO public.planet VALUES (12, 2, 164.8, 'Makemake', 'A dwarf planet in the Kuiper belt', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 8, 'Sol', true, 1, 'Our Sun');
INSERT INTO public.star VALUES (2, 4, 'Proxima Centauri', false, 3, 'A red dwarf star');
INSERT INTO public.star VALUES (3, 1, 'Barnards Star', true, 3, 'An orange dwarf star');
INSERT INTO public.star VALUES (4, 1, 'Sirius', true, 1, 'The brightest star');
INSERT INTO public.star VALUES (5, 8, 'Vega', true, 4, 'A blue-white star');
INSERT INTO public.star VALUES (6, 3, 'Rigel', true, 4, 'A blue supergiant');


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: not_so_funny primary_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.not_so_funny
    ADD CONSTRAINT primary_key PRIMARY KEY (not_so_funny_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: not_so_funny unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.not_so_funny
    ADD CONSTRAINT unique_id UNIQUE (not_so_funny_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

