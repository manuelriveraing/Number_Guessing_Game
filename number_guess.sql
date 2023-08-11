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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 11, 106);
INSERT INTO public.games VALUES (2, 11, 318);
INSERT INTO public.games VALUES (3, 12, 595);
INSERT INTO public.games VALUES (4, 12, 567);
INSERT INTO public.games VALUES (5, 11, 613);
INSERT INTO public.games VALUES (6, 11, 728);
INSERT INTO public.games VALUES (7, 11, 876);
INSERT INTO public.games VALUES (8, 13, 611);
INSERT INTO public.games VALUES (9, 13, 35);
INSERT INTO public.games VALUES (10, 14, 617);
INSERT INTO public.games VALUES (11, 14, 536);
INSERT INTO public.games VALUES (12, 13, 422);
INSERT INTO public.games VALUES (13, 13, 567);
INSERT INTO public.games VALUES (14, 13, 622);
INSERT INTO public.games VALUES (15, 15, 977);
INSERT INTO public.games VALUES (16, 15, 252);
INSERT INTO public.games VALUES (17, 16, 120);
INSERT INTO public.games VALUES (18, 16, 899);
INSERT INTO public.games VALUES (19, 15, 210);
INSERT INTO public.games VALUES (20, 15, 915);
INSERT INTO public.games VALUES (21, 15, 658);
INSERT INTO public.games VALUES (22, 17, 292);
INSERT INTO public.games VALUES (23, 17, 570);
INSERT INTO public.games VALUES (24, 18, 634);
INSERT INTO public.games VALUES (25, 18, 802);
INSERT INTO public.games VALUES (26, 17, 466);
INSERT INTO public.games VALUES (27, 17, 923);
INSERT INTO public.games VALUES (28, 17, 1000);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1691795660204');
INSERT INTO public.users VALUES (2, 'user_1691795660203');
INSERT INTO public.users VALUES (3, 'user_1691795723150');
INSERT INTO public.users VALUES (4, 'user_1691795723149');
INSERT INTO public.users VALUES (5, 'user_1691795844240');
INSERT INTO public.users VALUES (6, 'user_1691795845246');
INSERT INTO public.users VALUES (7, 'user_1691795845941');
INSERT INTO public.users VALUES (8, 'user_1691795845245');
INSERT INTO public.users VALUES (9, 'user_1691795845940');
INSERT INTO public.users VALUES (10, 'user_1691795844238');
INSERT INTO public.users VALUES (11, 'user_1691795900352');
INSERT INTO public.users VALUES (12, 'user_1691795900351');
INSERT INTO public.users VALUES (13, 'user_1691795964819');
INSERT INTO public.users VALUES (14, 'user_1691795964818');
INSERT INTO public.users VALUES (15, 'user_1691796000598');
INSERT INTO public.users VALUES (16, 'user_1691796000597');
INSERT INTO public.users VALUES (17, 'user_1691796149507');
INSERT INTO public.users VALUES (18, 'user_1691796149506');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 28, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 18, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

