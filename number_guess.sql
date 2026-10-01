--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    user_id integer,
    number_of_guesses integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 10, 169);
INSERT INTO public.games VALUES (2, 10, 280);
INSERT INTO public.games VALUES (3, 11, 15);
INSERT INTO public.games VALUES (4, 11, 489);
INSERT INTO public.games VALUES (5, 10, 214);
INSERT INTO public.games VALUES (6, 10, 935);
INSERT INTO public.games VALUES (7, 10, 188);
INSERT INTO public.games VALUES (8, 40, 65);
INSERT INTO public.games VALUES (9, 40, 839);
INSERT INTO public.games VALUES (10, 41, 704);
INSERT INTO public.games VALUES (11, 41, 377);
INSERT INTO public.games VALUES (12, 40, 292);
INSERT INTO public.games VALUES (13, 40, 461);
INSERT INTO public.games VALUES (14, 40, 427);
INSERT INTO public.games VALUES (15, 42, 257);
INSERT INTO public.games VALUES (16, 42, 225);
INSERT INTO public.games VALUES (17, 43, 572);
INSERT INTO public.games VALUES (18, 43, 780);
INSERT INTO public.games VALUES (19, 42, 658);
INSERT INTO public.games VALUES (20, 42, 580);
INSERT INTO public.games VALUES (21, 42, 451);
INSERT INTO public.games VALUES (22, 44, 213);
INSERT INTO public.games VALUES (23, 44, 429);
INSERT INTO public.games VALUES (24, 45, 787);
INSERT INTO public.games VALUES (25, 45, 727);
INSERT INTO public.games VALUES (26, 44, 235);
INSERT INTO public.games VALUES (27, 44, 397);
INSERT INTO public.games VALUES (28, 44, 39);
INSERT INTO public.games VALUES (29, 46, 927);
INSERT INTO public.games VALUES (30, 46, 85);
INSERT INTO public.games VALUES (31, 47, 369);
INSERT INTO public.games VALUES (32, 47, 24);
INSERT INTO public.games VALUES (33, 46, 811);
INSERT INTO public.games VALUES (34, 46, 392);
INSERT INTO public.games VALUES (35, 46, 646);
INSERT INTO public.games VALUES (36, 48, 9);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1790862121577');
INSERT INTO public.users VALUES (2, 'user_1790862121576');
INSERT INTO public.users VALUES (3, 'user_1790862144253');
INSERT INTO public.users VALUES (4, 'user_1790862144252');
INSERT INTO public.users VALUES (5, 'user_1790863251795');
INSERT INTO public.users VALUES (6, 'user_1790863251794');
INSERT INTO public.users VALUES (7, 'user_1790863313886');
INSERT INTO public.users VALUES (8, 'user_1790863313885');
INSERT INTO public.users VALUES (9, 'taha');
INSERT INTO public.users VALUES (10, 'user_1790863431914');
INSERT INTO public.users VALUES (11, 'user_1790863431913');
INSERT INTO public.users VALUES (12, 'user_1790863639736');
INSERT INTO public.users VALUES (13, 'user_1790863639735');
INSERT INTO public.users VALUES (14, 'user_1790863742346');
INSERT INTO public.users VALUES (15, 'user_1790863742345');
INSERT INTO public.users VALUES (16, 'user_1790863774307');
INSERT INTO public.users VALUES (17, 'user_1790863774306');
INSERT INTO public.users VALUES (18, 'user_1790863809319');
INSERT INTO public.users VALUES (19, 'user_1790863809318');
INSERT INTO public.users VALUES (20, 'user_1790863841478');
INSERT INTO public.users VALUES (21, 'user_1790863841477');
INSERT INTO public.users VALUES (22, 'user_1790864084472');
INSERT INTO public.users VALUES (23, 'user_1790864084471');
INSERT INTO public.users VALUES (24, 'user_1790864143962');
INSERT INTO public.users VALUES (25, 'user_1790864143961');
INSERT INTO public.users VALUES (26, 'user_1790864241375');
INSERT INTO public.users VALUES (27, 'user_1790864241374');
INSERT INTO public.users VALUES (28, 'user_1790864353707');
INSERT INTO public.users VALUES (29, 'user_1790864353706');
INSERT INTO public.users VALUES (30, 'user_1790864358015');
INSERT INTO public.users VALUES (31, 'user_1790864358014');
INSERT INTO public.users VALUES (32, 'user_1790864361474');
INSERT INTO public.users VALUES (33, 'user_1790864361473');
INSERT INTO public.users VALUES (34, 'user_1790864549248');
INSERT INTO public.users VALUES (35, 'user_1790864549247');
INSERT INTO public.users VALUES (36, 'user_1790864593968');
INSERT INTO public.users VALUES (37, 'user_1790864593967');
INSERT INTO public.users VALUES (38, 'user_1790864631472');
INSERT INTO public.users VALUES (39, 'user_1790864631471');
INSERT INTO public.users VALUES (40, 'user_1790864679594');
INSERT INTO public.users VALUES (41, 'user_1790864679593');
INSERT INTO public.users VALUES (42, 'user_1790864717639');
INSERT INTO public.users VALUES (43, 'user_1790864717638');
INSERT INTO public.users VALUES (44, 'user_1790864737556');
INSERT INTO public.users VALUES (45, 'user_1790864737555');
INSERT INTO public.users VALUES (46, 'user_1790864743990');
INSERT INTO public.users VALUES (47, 'user_1790864743989');
INSERT INTO public.users VALUES (48, 'afnes');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 36, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 48, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


