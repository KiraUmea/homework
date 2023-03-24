--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    age character varying(250) NOT NULL
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- Name: directors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.directors (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    age character varying(250) NOT NULL
);


ALTER TABLE public.directors OWNER TO postgres;

--
-- Name: filmlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filmlist (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    year character varying(250) NOT NULL
);


ALTER TABLE public.filmlist OWNER TO postgres;

--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors (id, name, age) FROM stdin;
1	Anya Taylor-Joy	26
2	James McAvoy	43
3	Elliot Page	36
4	Johny Depp	59
5	Ann Hathaway	40
6	Kristen Stewart	32
\.


--
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.directors (id, name, age) FROM stdin;
1	David Lynch	77
2	Michael Moore	68
3	Tsai Ming-Liang	65
4	Quentin Tarantino	59
5	Abbas Kiarostami	76
6	Bela Tarr	67
\.


--
-- Data for Name: filmlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filmlist (id, title, year) FROM stdin;
1	Joker	2019
2	Dark Phoenix	2019
3	Batman	2022
4	Kickass	2010
5	New mutants	2020
6	Big bug	2022
\.


--
-- Name: actors actors_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_name_key UNIQUE (name);


--
-- Name: actors actors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);


--
-- Name: directors directors_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_name_key UNIQUE (name);


--
-- Name: directors directors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (id);


--
-- Name: filmlist filmlist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filmlist
    ADD CONSTRAINT filmlist_pkey PRIMARY KEY (id);


--
-- Name: filmlist filmlist_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filmlist
    ADD CONSTRAINT filmlist_title_key UNIQUE (title);


--
-- PostgreSQL database dump complete
--

