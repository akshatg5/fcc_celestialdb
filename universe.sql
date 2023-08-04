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
    name character varying(100) NOT NULL,
    age_in_million_years integer NOT NULL,
    size integer NOT NULL,
    temprature numeric(4,2),
    description text,
    is_supermassive boolean,
    is_superhot boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    distance_from_the_planet integer NOT NULL,
    size integer NOT NULL,
    temprature numeric(4,2),
    description text,
    atmosphere boolean,
    water_presence boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_from_the_earth integer NOT NULL,
    temprature numeric(4,2),
    description text,
    in_same_galaxy boolean,
    supports_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_million_years integer NOT NULL,
    size integer NOT NULL,
    temprature numeric(4,2),
    description text,
    is_supermassive boolean,
    is_superhot boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: universe_details; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe_details (
    name character varying(100) NOT NULL,
    size_lightyears integer NOT NULL,
    life_existence boolean NOT NULL,
    universe_details_id integer NOT NULL,
    dimension text
);


ALTER TABLE public.universe_details OWNER TO freecodecamp;

--
-- Name: universe_details_universe_details_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_details_universe_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_details_universe_details_id_seq OWNER TO freecodecamp;

--
-- Name: universe_details_universe_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_details_universe_details_id_seq OWNED BY public.universe_details.universe_details_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: universe_details universe_details_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_details ALTER COLUMN universe_details_id SET DEFAULT nextval('public.universe_details_universe_details_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 200, 2550, 42.23, 'Andromeda is neighbour of our galaxy', true, false);
INSERT INTO public.galaxy VALUES (2, 'ABC', 400, 5252, 41.26, 'ABC is close to Andromeda', true, true);
INSERT INTO public.galaxy VALUES (3, 'XYZ', 500, 4561, 25.25, 'XYZ is close to ABC', true, false);
INSERT INTO public.galaxy VALUES (4, 'FUN', 450, 1532, 22.20, 'FUN is closer to XYZ', true, false);
INSERT INTO public.galaxy VALUES (5, 'UNI', 500, 4152, 20.12, 'UNI is closer to FUN', false, true);
INSERT INTO public.galaxy VALUES (6, 'POP', 100, 2520, 10.15, 'POP is close to UNI', false, true);
INSERT INTO public.galaxy VALUES (7, 'g7', 145, 5241, 20.25, 'g7', true, false);
INSERT INTO public.galaxy VALUES (8, 'g8', 148, 4251, 10.25, 'g8', true, false);
INSERT INTO public.galaxy VALUES (9, 'g9', 250, 5263, 12.05, 'g9', false, true);
INSERT INTO public.galaxy VALUES (10, 'g10', 150, 5050, 10.50, 'g10', false, true);
INSERT INTO public.galaxy VALUES (11, 'g11', 452, 2014, 25.25, 'g11', false, true);
INSERT INTO public.galaxy VALUES (12, 'g12', 415, 7894, 20.25, 'g12', true, true);
INSERT INTO public.galaxy VALUES (13, 'g13', 152, 4562, 25.25, 'g13', true, true);
INSERT INTO public.galaxy VALUES (14, 'g14', 458, 8521, 10.05, 'g14', false, true);
INSERT INTO public.galaxy VALUES (15, 'g15', 741, 8526, 50.20, 'g15', false, true);
INSERT INTO public.galaxy VALUES (16, 'g16', 102, 1502, 20.24, 'g16', true, true);
INSERT INTO public.galaxy VALUES (17, 'g17', 415, 8945, 45.54, 'g17', false, true);
INSERT INTO public.galaxy VALUES (18, 'g18', 741, 8564, 10.23, 'g18', true, false);
INSERT INTO public.galaxy VALUES (19, 'g19', 753, 1596, 51.15, 'g19', true, false);
INSERT INTO public.galaxy VALUES (20, 'g20', 741, 1231, 12.21, 'g20', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'EarthMoon', 20, 2050, 12.21, 'EarthMoon is kind of a satellite for the Earth', true, false, 1);
INSERT INTO public.moon VALUES (2, 'm2', 252, 5262, 26.24, 'm2', true, false, 2);
INSERT INTO public.moon VALUES (3, 'p3', 4521, 1521, 10.02, 'p3', true, false, 3);
INSERT INTO public.moon VALUES (4, 'p4', 8485, 5151, 12.02, 'p4', false, true, 4);
INSERT INTO public.moon VALUES (5, 'p5', 7456, 9654, 52.25, 'p5', true, true, 5);
INSERT INTO public.moon VALUES (6, 'p6', 7532, 9512, 40.04, 'p6', false, true, 6);
INSERT INTO public.moon VALUES (7, 'p7', 8562, 7458, 20.25, 'p7', false, false, 7);
INSERT INTO public.moon VALUES (8, 'p8', 8541, 9652, 20.63, 'p8', false, true, 8);
INSERT INTO public.moon VALUES (9, 'p9', 2837, 8546, 20.34, 'p9', true, true, 9);
INSERT INTO public.moon VALUES (10, 'p10', 6245, 6425, 20.26, 'p10', false, true, 10);
INSERT INTO public.moon VALUES (11, 'p11', 7569, 9458, 10.05, 'p11', false, true, 11);
INSERT INTO public.moon VALUES (12, 'p12', 9545, 7645, 14.05, 'p12', true, true, 12);
INSERT INTO public.moon VALUES (13, 'p13', 9635, 4521, 52.02, 'p13', true, false, 13);
INSERT INTO public.moon VALUES (14, 'p14', 7452, 6220, 12.08, 'p14', true, false, 14);
INSERT INTO public.moon VALUES (15, 'p15', 8546, 9485, 25.23, 'p15', false, true, 15);
INSERT INTO public.moon VALUES (16, 'm16', 152, 1262, 16.24, 'm16', true, false, 16);
INSERT INTO public.moon VALUES (17, 'p17', 1521, 2521, 14.02, 'p17', true, false, 17);
INSERT INTO public.moon VALUES (18, 'p18', 8185, 5851, 15.02, 'p18', false, true, 18);
INSERT INTO public.moon VALUES (19, 'p19', 1456, 1654, 12.25, 'p19', true, true, 19);
INSERT INTO public.moon VALUES (20, 'p20', 7132, 9112, 41.04, 'p20', false, true, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', 1245, 5050, 14.25, 'Very near to Earth and has Earth like characterstics too', true, true, 1);
INSERT INTO public.planet VALUES (2, 'PlanetOne', 210, 4512, 12.24, 'PlanetOne is at position 1', true, false, 2);
INSERT INTO public.planet VALUES (3, 'p3', 4521, 1521, 10.02, 'p3', true, false, 3);
INSERT INTO public.planet VALUES (4, 'p4', 8485, 5151, 12.02, 'p4', false, true, 4);
INSERT INTO public.planet VALUES (5, 'p5', 7456, 9654, 52.25, 'p5', true, true, 5);
INSERT INTO public.planet VALUES (6, 'p6', 7532, 9512, 40.04, 'p6', false, true, 6);
INSERT INTO public.planet VALUES (7, 'p7', 8562, 7458, 20.25, 'p7', false, false, 7);
INSERT INTO public.planet VALUES (8, 'p8', 8541, 9652, 20.63, 'p8', false, true, 8);
INSERT INTO public.planet VALUES (9, 'p9', 2837, 8546, 20.34, 'p9', true, true, 9);
INSERT INTO public.planet VALUES (10, 'p10', 6245, 6425, 20.26, 'p10', false, true, 10);
INSERT INTO public.planet VALUES (11, 'p11', 7569, 9458, 10.05, 'p11', false, true, 11);
INSERT INTO public.planet VALUES (12, 'p12', 9545, 7645, 14.05, 'p12', true, true, 12);
INSERT INTO public.planet VALUES (13, 'p13', 9635, 4521, 52.02, 'p13', true, false, 13);
INSERT INTO public.planet VALUES (14, 'p14', 7452, 6220, 12.08, 'p14', true, false, 14);
INSERT INTO public.planet VALUES (15, 'p15', 8546, 9485, 25.23, 'p15', false, true, 15);
INSERT INTO public.planet VALUES (16, 'p16', 4221, 2521, 11.02, 'p16', true, false, 16);
INSERT INTO public.planet VALUES (17, 'p17', 8481, 5152, 13.02, 'p17', false, true, 17);
INSERT INTO public.planet VALUES (18, 'p18', 7533, 9511, 41.04, 'p18', false, true, 18);
INSERT INTO public.planet VALUES (19, 'p19', 8561, 7451, 21.25, 'p19', false, false, 19);
INSERT INTO public.planet VALUES (20, 'p20', 8542, 9651, 21.63, 'p20', false, true, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'AndromedaStar', 200, 5241, 23.12, 'A star located in Andromeda', true, true, 1);
INSERT INTO public.star VALUES (2, 'ABCstar', 400, 5250, 12.12, 'ABCstar is located in ABC', true, false, 2);
INSERT INTO public.star VALUES (3, 'XYZstar', 450, 5256, 10.10, 'XYZstar is located in XYZ', true, false, 3);
INSERT INTO public.star VALUES (4, 'FUNstar', 250, 5002, 12.20, 'FUNstar is located in FUN', true, false, 4);
INSERT INTO public.star VALUES (5, 'UNIstar', 220, 2005, 41.10, 'UNIstar is located in UNI', true, false, 5);
INSERT INTO public.star VALUES (6, 'POPstar', 250, 5500, 25.20, 'POPstar is located in POP', true, false, 6);
INSERT INTO public.star VALUES (7, 's7', 259, 1001, 10.22, 's7', true, true, 7);
INSERT INTO public.star VALUES (8, 's8', 258, 1002, 10.02, 's8', false, true, 8);
INSERT INTO public.star VALUES (9, 's9', 257, 1003, 10.03, 's9', false, true, 9);
INSERT INTO public.star VALUES (10, 's10', 256, 1004, 10.04, 's10', true, false, 10);
INSERT INTO public.star VALUES (11, 's11', 255, 1005, 10.05, 's11', false, true, 11);
INSERT INTO public.star VALUES (12, 's12', 254, 1006, 10.06, 's12', false, true, 12);
INSERT INTO public.star VALUES (13, 's13', 253, 1007, 10.07, 's13', false, true, 13);
INSERT INTO public.star VALUES (14, 's14', 252, 1008, 10.08, 's14', true, false, 14);
INSERT INTO public.star VALUES (15, 's15', 359, 1101, 18.20, 's15', true, true, 15);
INSERT INTO public.star VALUES (16, 's16', 358, 1102, 11.02, 's16', false, true, 16);
INSERT INTO public.star VALUES (17, 's17', 357, 1103, 11.03, 's17', false, true, 17);
INSERT INTO public.star VALUES (18, 's18', 356, 1104, 11.04, 's18', true, false, 18);
INSERT INTO public.star VALUES (19, 's19', 355, 1105, 11.05, 's19', false, true, 19);
INSERT INTO public.star VALUES (20, 's20', 354, 1106, 11.06, 's20', false, true, 20);


--
-- Data for Name: universe_details; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe_details VALUES ('abc universe', 20, true, 1, 'four dimension');
INSERT INTO public.universe_details VALUES ('xyz universe', 25, false, 2, 'five dimension');
INSERT INTO public.universe_details VALUES ('fun universe', 21, true, 3, 'fun dimensions');
INSERT INTO public.universe_details VALUES ('universe home', 24, true, 4, 'universe home');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: universe_details_universe_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_details_universe_details_id_seq', 1, false);


--
-- Name: star galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: galaxy size; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT size UNIQUE (size);


--
-- Name: planet star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: universe_details universe_details_dimension_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_details
    ADD CONSTRAINT universe_details_dimension_key UNIQUE (dimension);


--
-- Name: universe_details universe_details_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_details
    ADD CONSTRAINT universe_details_pkey PRIMARY KEY (universe_details_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

