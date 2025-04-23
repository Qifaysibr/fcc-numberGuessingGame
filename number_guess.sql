--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    guesses integer NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 10);
INSERT INTO public.games VALUES (2, 2, 465);
INSERT INTO public.games VALUES (3, 2, 484);
INSERT INTO public.games VALUES (4, 3, 825);
INSERT INTO public.games VALUES (5, 3, 830);
INSERT INTO public.games VALUES (6, 2, 263);
INSERT INTO public.games VALUES (7, 2, 125);
INSERT INTO public.games VALUES (8, 2, 916);
INSERT INTO public.games VALUES (9, 1, 8);
INSERT INTO public.games VALUES (10, 4, 889);
INSERT INTO public.games VALUES (11, 4, 216);
INSERT INTO public.games VALUES (12, 5, 636);
INSERT INTO public.games VALUES (13, 5, 136);
INSERT INTO public.games VALUES (14, 4, 198);
INSERT INTO public.games VALUES (15, 4, 624);
INSERT INTO public.games VALUES (16, 4, 918);
INSERT INTO public.games VALUES (17, 6, 12);
INSERT INTO public.games VALUES (18, 7, 16);
INSERT INTO public.games VALUES (19, 7, 221);
INSERT INTO public.games VALUES (20, 8, 941);
INSERT INTO public.games VALUES (21, 8, 771);
INSERT INTO public.games VALUES (22, 7, 368);
INSERT INTO public.games VALUES (23, 7, 140);
INSERT INTO public.games VALUES (24, 7, 58);
INSERT INTO public.games VALUES (25, 6, 7);
INSERT INTO public.games VALUES (26, 9, 620);
INSERT INTO public.games VALUES (27, 9, 359);
INSERT INTO public.games VALUES (28, 10, 272);
INSERT INTO public.games VALUES (29, 10, 965);
INSERT INTO public.games VALUES (30, 9, 744);
INSERT INTO public.games VALUES (31, 9, 360);
INSERT INTO public.games VALUES (32, 9, 342);
INSERT INTO public.games VALUES (33, 6, 12);
INSERT INTO public.games VALUES (34, 11, 955);
INSERT INTO public.games VALUES (35, 11, 727);
INSERT INTO public.games VALUES (36, 12, 266);
INSERT INTO public.games VALUES (37, 12, 681);
INSERT INTO public.games VALUES (38, 11, 595);
INSERT INTO public.games VALUES (39, 11, 255);
INSERT INTO public.games VALUES (40, 11, 588);
INSERT INTO public.games VALUES (41, 13, 346);
INSERT INTO public.games VALUES (42, 13, 861);
INSERT INTO public.games VALUES (43, 14, 285);
INSERT INTO public.games VALUES (44, 14, 647);
INSERT INTO public.games VALUES (45, 13, 349);
INSERT INTO public.games VALUES (46, 13, 953);
INSERT INTO public.games VALUES (47, 13, 371);
INSERT INTO public.games VALUES (48, 15, 503);
INSERT INTO public.games VALUES (49, 15, 815);
INSERT INTO public.games VALUES (50, 16, 819);
INSERT INTO public.games VALUES (51, 16, 207);
INSERT INTO public.games VALUES (52, 15, 63);
INSERT INTO public.games VALUES (53, 15, 588);
INSERT INTO public.games VALUES (54, 15, 557);
INSERT INTO public.games VALUES (55, 17, 890);
INSERT INTO public.games VALUES (56, 17, 942);
INSERT INTO public.games VALUES (57, 18, 82);
INSERT INTO public.games VALUES (58, 18, 281);
INSERT INTO public.games VALUES (59, 17, 168);
INSERT INTO public.games VALUES (60, 17, 911);
INSERT INTO public.games VALUES (61, 17, 892);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'syafiq');
INSERT INTO public.users VALUES (2, 'user_1745383256548');
INSERT INTO public.users VALUES (3, 'user_1745383256547');
INSERT INTO public.users VALUES (4, 'user_1745383486943');
INSERT INTO public.users VALUES (5, 'user_1745383486942');
INSERT INTO public.users VALUES (6, 'miharbi');
INSERT INTO public.users VALUES (7, 'user_1745383591039');
INSERT INTO public.users VALUES (8, 'user_1745383591038');
INSERT INTO public.users VALUES (9, 'user_1745383790943');
INSERT INTO public.users VALUES (10, 'user_1745383790942');
INSERT INTO public.users VALUES (11, 'user_1745383926785');
INSERT INTO public.users VALUES (12, 'user_1745383926784');
INSERT INTO public.users VALUES (13, 'user_1745384138438');
INSERT INTO public.users VALUES (14, 'user_1745384138437');
INSERT INTO public.users VALUES (15, 'user_1745384254798');
INSERT INTO public.users VALUES (16, 'user_1745384254797');
INSERT INTO public.users VALUES (17, 'user_1745384266998');
INSERT INTO public.users VALUES (18, 'user_1745384266997');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 61, true);


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

