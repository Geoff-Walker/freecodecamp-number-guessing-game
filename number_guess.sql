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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(30) NOT NULL,
    best_game integer,
    games_played integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1668079045159', 420, 2);
INSERT INTO public.users VALUES ('user_1668079045160', 61, 5);
INSERT INTO public.users VALUES ('user_1668079079793', 524, 1);
INSERT INTO public.users VALUES ('user_1668079079792', 93, 1);
INSERT INTO public.users VALUES ('user_1668079095782', 213, 2);
INSERT INTO public.users VALUES ('user_1668079095783', 148, 5);
INSERT INTO public.users VALUES ('user_1668079176638', 431, 2);
INSERT INTO public.users VALUES ('user_1668079176639', 435, 5);
INSERT INTO public.users VALUES ('user_1668079823961', 0, 1);
INSERT INTO public.users VALUES ('user_1668079823960', 0, 1);
INSERT INTO public.users VALUES ('user_1668079938685', 0, 2);
INSERT INTO public.users VALUES ('user_1668079938686', 0, 5);
INSERT INTO public.users VALUES ('user_1668080259094', 0, 0);
INSERT INTO public.users VALUES ('user_1668080259093', 0, 0);
INSERT INTO public.users VALUES ('user_1668080317290', 0, 0);
INSERT INTO public.users VALUES ('user_1668080317289', 0, 0);
INSERT INTO public.users VALUES ('user_1668080355048', 0, 0);
INSERT INTO public.users VALUES ('user_1668080355047', 0, 0);
INSERT INTO public.users VALUES ('user_1668080483532', 0, 0);
INSERT INTO public.users VALUES ('user_1668080483531', 0, 0);
INSERT INTO public.users VALUES ('user_1668080583601', 198, 2);
INSERT INTO public.users VALUES ('user_1668080583602', 329, 5);
INSERT INTO public.users VALUES ('user_1668080634104', 23, 2);
INSERT INTO public.users VALUES ('user_1668080634105', 284, 5);
INSERT INTO public.users VALUES ('Geoff', 8, 1);
INSERT INTO public.users VALUES ('user_1668080814056', 778, 2);
INSERT INTO public.users VALUES ('user_1668080814057', 784, 5);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--
