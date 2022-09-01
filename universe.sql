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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(60) NOT NULL,
    likely_to_hit_earth boolean,
    distance_from_earth character varying(25) NOT NULL,
    asteroid_count integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_types character varying(50),
    age_in_millions_of_years integer,
    distance_from_earth character varying(25) NOT NULL,
    famous_constellation character varying(30)
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
    number_of_moon_legends integer,
    moon_made_of_cheese character varying(6),
    weight_in_tonnes numeric(4,1),
    local_nicknames character varying(30) NOT NULL
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance_from_earth character varying(25) NOT NULL,
    has_life boolean,
    has_rings boolean,
    famous_constellation character varying(30),
    asteroid_count integer,
    moon_made_of_cheese character varying(6)
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
    famous_constellation character varying(30),
    description text,
    distance_from_earth character varying(25) NOT NULL,
    number_of_star_clusters integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.asteroid (asteroid_id, name, likely_to_hit_earth, distance_from_earth, asteroid_count) FROM stdin;
1	P59	f	far	42
2	L4	f	very far	3
3	G1	t	close	1
\.


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, galaxy_types, age_in_millions_of_years, distance_from_earth, famous_constellation) FROM stdin;
1	Andromeda	horseshoe	500	very far	Orion
2	Milky Way	candy bar	20	in it	Big Dipper
3	Kirby	video game	1	nearby	The Kirbster
4	Tonkinese	kitty cat	2	far far away	Nora Moo
5	Fan	aircon	44	nearby	Electric Fan
6	Bean	legume	90	far	Magical Fruit
7	Doggo	\N	\N	far	Sirius
8	Guinea Pig	\N	\N	very far	Hamtaro
9	Northern	\N	\N	in it	North Star
10	Calendar	\N	\N	nearby	Datum
11	Crait	\N	\N	far far away	Salt
12	Nebula	\N	\N	in it	Horsey
13	Antennae	\N	\N	far	Corvus
14	Backward	\N	\N	very far	Centaurus
15	Black Eye	\N	\N	very far	Coma Berenices
16	Bodes	\N	\N	far	Ursa Major
17	Butterfly	\N	\N	very very far	Virgo
19	Cartwheel	\N	\N	super far	Sculptor
20	Circinus	\N	\N	far	Circinus
21	Condor	\N	\N	far	Pavo
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, number_of_moon_legends, moon_made_of_cheese, weight_in_tonnes, local_nicknames) FROM stdin;
1	A	\N	no	\N	A1
2	B	\N	eh	\N	B2
3	C	\N	yes	\N	C3
4	D	\N	mrow	\N	D4
5	E	\N	fyeah	\N	E5
6	F	\N	pfft	\N	F6
7	G	\N	woof	\N	G7
8	H	\N	ham	\N	H8
9	I	\N	yup	\N	I9
10	J	\N	kinda	\N	J1
11	K	\N	nah	\N	K2
12	L	\N	nope	\N	L3
13	M	\N	caw	\N	M4
14	N	\N	on	\N	N5
15	O	\N	ugh	\N	O6
16	P	\N	bes	\N	P7
17	Q	\N	iam	\N	Q8
18	R	\N	bee	\N	R9
19	S	\N	ring	\N	S1
20	T	\N	chirp	\N	T2
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, distance_from_earth, has_life, has_rings, famous_constellation, asteroid_count, moon_made_of_cheese) FROM stdin;
1	Mercury	close	\N	\N	Orion	\N	no
3	Venus	close	\N	\N	Big Dipper	\N	eh
4	Popstar	nearby	\N	\N	The Kirbster	\N	yes
5	Meow	far far away	\N	\N	Nora Moo	\N	mrow
6	Fanner	nearby	\N	\N	Electric Fan	\N	fyeah
7	BEEN	in it	\N	\N	Magical Fruit	\N	pfft
8	Earth	in it	\N	\N	Sirius	\N	woof
9	Mars	nearby	\N	\N	Hamtaro	\N	ham
10	Jupiter	closeish	\N	\N	North Star	\N	yup
11	Saturn	closeish	\N	\N	Datum	\N	kinda
12	Uranus	far	\N	\N	Salt	\N	nah
13	Neptune	far	\N	\N	Horsey	\N	nope
14	SN 1921A	far	\N	\N	Corvus	\N	caw
15	Tenlap	very far	\N	\N	Centaurus	\N	on
16	Shiner	super far	\N	\N	Coma Berenices	\N	ugh
17	Boode	bery bar	\N	\N	Ursa Major	\N	bes
18	Floatlika	far	\N	\N	Virgo	\N	bee
19	Thinker	far	\N	\N	Sculptor	\N	iam
20	Maximus	far	\N	\N	Circinus	\N	ring
21	Peacock	very far	\N	\N	Pavo	\N	chirp
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, famous_constellation, description, distance_from_earth, number_of_star_clusters) FROM stdin;
1	Belt	Orion	A set of three stars	very far	3
2	Ladle	Big Dipper	A set of many stars	in it	8
3	Pinky	The Kirbster	A set of circular stars	nearby	10
4	Tonkaboo	Nora Moo	A set of whiskered stars	far far away	12
7	Blade	Electric Fan	A set of fanned stars	nearby	20
8	Kidney	Magical Fruit	A set of musical stars	in it	22
12	Dog	Sirius	\N	far	\N
13	Guinea	Hamtaro	\N	very far	\N
14	North	North Star	\N	in it	\N
15	Cally	Datum	\N	nearby	\N
16	Craiter	Salt	\N	far far away	\N
17	Nebby	Horsey	\N	in it	\N
18	Gamma Corvi	Corvus	\N	far	\N
19	Alpha Centauri	Centaurus	\N	very far	\N
20	Alpha Berenices	Coma Berenices	\N	very far	\N
21	Polaris	Ursa Major	\N	far	\N
22	Spica	Virgo	\N	very very far	\N
23	Aratus	Sculptor	\N	super far	\N
24	AX Circini	Circinus	\N	far	\N
25	Alpha Pavonis	Pavo	\N	far	\N
\.


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 25, true);


--
-- Name: asteroid asteroid_asteroid_count_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_count_key UNIQUE (asteroid_count);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_famous_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_famous_constellation_key UNIQUE (famous_constellation);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_made_of_cheese_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_made_of_cheese_key UNIQUE (moon_made_of_cheese);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_moon_made_of_cheese_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_made_of_cheese_key UNIQUE (moon_made_of_cheese);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_famous_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_famous_constellation_key UNIQUE (famous_constellation);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_moon_made_of_cheese_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_made_of_cheese_fkey FOREIGN KEY (moon_made_of_cheese) REFERENCES public.planet(moon_made_of_cheese);


--
-- Name: planet planet_famous_constellation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_famous_constellation_fkey FOREIGN KEY (famous_constellation) REFERENCES public.star(famous_constellation);


--
-- Name: star star_famous_constellation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_famous_constellation_fkey FOREIGN KEY (famous_constellation) REFERENCES public.galaxy(famous_constellation);


--
-- PostgreSQL database dump complete
--

