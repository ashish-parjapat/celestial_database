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
    name character varying(60),
    age_in_millions_of_year integer,
    distance_from_earth numeric,
    volume integer,
    description text,
    is_life boolean NOT NULL,
    is_water boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth numeric,
    volume integer,
    description text,
    is_life boolean NOT NULL,
    is_water boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth numeric,
    volume integer,
    description text,
    is_life boolean NOT NULL,
    is_water boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth numeric,
    volume integer,
    description text,
    is_life boolean,
    is_water boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 500, 0, 300, 'good-galay', true, true);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 100, 100, 3000, 'good-galay', false, false);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 120, 1.20, 450, 'not-good', false, false);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 100, 100.23, 3000, 'good-galay', true, false);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 1120, 1.25, 450, 'not-good', false, true);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 100, 100.23, 30500, 'no-no-galay', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', 123, 52.3, 85, 'beautiful', false, true, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', 123, 52.3, 85, 'beautiful', false, true, NULL);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'info1', 'text');
INSERT INTO public.more_info VALUES (2, 'info2', 'text');
INSERT INTO public.more_info VALUES (3, 'info3', 'text');
INSERT INTO public.more_info VALUES (4, 'info4', 'text');
INSERT INTO public.more_info VALUES (5, 'info5', 'text');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 102, 452.96, 4125, 'good-good', false, false);
INSERT INTO public.planet VALUES (2, 'planet2', 102, 452.96, 4125, 'good-good', false, false);
INSERT INTO public.planet VALUES (3, 'planet3', 102, 452.96, 4125, 'good-good', false, false);
INSERT INTO public.planet VALUES (4, 'planet4', 102, 452.96, 4125, 'good-good', false, false);
INSERT INTO public.planet VALUES (5, 'planet5', 102, 452.96, 4125, 'good-good', false, false);
INSERT INTO public.planet VALUES (6, 'planet6', 102, 452.96, 4125, 'good-good', false, false);
INSERT INTO public.planet VALUES (7, 'planet7', 102, 452.96, 4125, 'good-good', false, false);
INSERT INTO public.planet VALUES (8, 'planet8', 102, 452.96, 4125, 'good-good', false, false);
INSERT INTO public.planet VALUES (9, 'planet9', 102, 452.96, 4125, 'good-good', false, false);
INSERT INTO public.planet VALUES (10, 'planet10', 102, 452.96, 4125, 'good-good', false, false);
INSERT INTO public.planet VALUES (11, 'planet11', 102, 452.96, 4125, 'good-good', false, false);
INSERT INTO public.planet VALUES (12, 'planet12', 102, 452.96, 4125, 'good-good', false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'STAR1', 14500, 45.02, 784, 'TOO-BRIGHT', false, false);
INSERT INTO public.star VALUES (2, 'star2', 140, 2503.00, 5421, 'not-healthy', false, true);
INSERT INTO public.star VALUES (3, 'star3', 452, 320.12, 85, 'stable', false, false);
INSERT INTO public.star VALUES (4, 'star4', 140, 2503.00, 5421, 'not-healthy', false, true);
INSERT INTO public.star VALUES (5, 'star5', 452, 320.12, 85, 'stable', false, false);
INSERT INTO public.star VALUES (6, 'star6', 140, 2503.00, 5421, 'not-healthy', false, true);
INSERT INTO public.star VALUES (7, 'star7', 452, 320.12, 85, 'stable', false, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--


