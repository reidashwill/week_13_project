--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: reidashwill
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO reidashwill;

--
-- Name: cats; Type: TABLE; Schema: public; Owner: reidashwill
--

CREATE TABLE public.cats (
    id bigint NOT NULL,
    name character varying,
    age integer,
    is_available boolean DEFAULT true,
    breed character varying
);


ALTER TABLE public.cats OWNER TO reidashwill;

--
-- Name: cats_id_seq; Type: SEQUENCE; Schema: public; Owner: reidashwill
--

CREATE SEQUENCE public.cats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cats_id_seq OWNER TO reidashwill;

--
-- Name: cats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reidashwill
--

ALTER SEQUENCE public.cats_id_seq OWNED BY public.cats.id;


--
-- Name: dogs; Type: TABLE; Schema: public; Owner: reidashwill
--

CREATE TABLE public.dogs (
    id bigint NOT NULL,
    name character varying,
    age integer,
    is_available boolean DEFAULT true,
    breed character varying
);


ALTER TABLE public.dogs OWNER TO reidashwill;

--
-- Name: dogs_id_seq; Type: SEQUENCE; Schema: public; Owner: reidashwill
--

CREATE SEQUENCE public.dogs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dogs_id_seq OWNER TO reidashwill;

--
-- Name: dogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reidashwill
--

ALTER SEQUENCE public.dogs_id_seq OWNED BY public.dogs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: reidashwill
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO reidashwill;

--
-- Name: cats id; Type: DEFAULT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.cats ALTER COLUMN id SET DEFAULT nextval('public.cats_id_seq'::regclass);


--
-- Name: dogs id; Type: DEFAULT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.dogs ALTER COLUMN id SET DEFAULT nextval('public.dogs_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: reidashwill
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-06-12 15:14:12.554877	2020-06-12 15:14:12.554877
\.


--
-- Data for Name: cats; Type: TABLE DATA; Schema: public; Owner: reidashwill
--

COPY public.cats (id, name, age, is_available, breed) FROM stdin;
182	Poppy	1	t	Brazilian Shorthair
183	Angel	9	t	Khao Manee
184	Molly	1	t	Japanese Bobtail
185	Simba	6	t	Turkish Van
186	Sooty	7	t	Ojos Azules
187	Chloe	9	t	Donskoy, or Don Sphynx
188	Chloe	3	t	Oriental Longhair
189	Coco	8	t	Arabian Mau
190	Bella	7	t	Dwarf cat, or Dwelf
191	Shadow	7	t	Chantilly-Tiffany
192	Coco	3	t	German Rex
193	Tiger	1	t	Russian White, Black and Tabby
194	Daisy	2	t	Munchkin
195	Tiger	6	t	Chausie
196	Sooty	4	t	Khao Manee
\.


--
-- Data for Name: dogs; Type: TABLE DATA; Schema: public; Owner: reidashwill
--

COPY public.dogs (id, name, age, is_available, breed) FROM stdin;
181	Sugar	1	t	Westhighland Terrier
182	Teddy	7	t	Norwich Terrier
183	Jake	10	t	Redbone
184	Maggie	10	t	German Pointer
185	Scooter	6	t	Walker Hound
186	Baby	2	t	Shihtzu
187	Rusty	3	t	Miniature Poodle
188	Cocoa	2	t	Toy Terrier
189	Bailey	10	t	Cardigan Corgi
190	Brutus	9	t	Airedale
191	Harvey	5	t	Tibetan Terrier
192	Brutus	1	t	Papillon
193	Rusty	13	t	Basset Hound
194	Dakota	14	t	Swiss Mountain
195	Ginger	8	t	Giant Schnauzer
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: reidashwill
--

COPY public.schema_migrations (version) FROM stdin;
20200612151131
20200612151431
20200612213825
\.


--
-- Name: cats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: reidashwill
--

SELECT pg_catalog.setval('public.cats_id_seq', 196, true);


--
-- Name: dogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: reidashwill
--

SELECT pg_catalog.setval('public.dogs_id_seq', 195, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: cats cats_pkey; Type: CONSTRAINT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.cats
    ADD CONSTRAINT cats_pkey PRIMARY KEY (id);


--
-- Name: dogs dogs_pkey; Type: CONSTRAINT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.dogs
    ADD CONSTRAINT dogs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

