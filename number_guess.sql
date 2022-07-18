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
    number_of_guesses integer
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

INSERT INTO public.games VALUES (71, 35, 651);
INSERT INTO public.games VALUES (72, 35, 299);
INSERT INTO public.games VALUES (73, 36, 577);
INSERT INTO public.games VALUES (74, 36, 797);
INSERT INTO public.games VALUES (75, 35, 389);
INSERT INTO public.games VALUES (76, 35, 457);
INSERT INTO public.games VALUES (77, 35, 723);
INSERT INTO public.games VALUES (78, 37, 639);
INSERT INTO public.games VALUES (79, 37, 457);
INSERT INTO public.games VALUES (80, 38, 302);
INSERT INTO public.games VALUES (81, 38, 117);
INSERT INTO public.games VALUES (82, 37, 9);
INSERT INTO public.games VALUES (83, 37, 284);
INSERT INTO public.games VALUES (84, 37, 862);
INSERT INTO public.games VALUES (85, 39, 610);
INSERT INTO public.games VALUES (86, 39, 949);
INSERT INTO public.games VALUES (87, 40, 531);
INSERT INTO public.games VALUES (88, 40, 54);
INSERT INTO public.games VALUES (89, 39, 693);
INSERT INTO public.games VALUES (90, 39, 786);
INSERT INTO public.games VALUES (91, 39, 19);
INSERT INTO public.games VALUES (92, 41, 210);
INSERT INTO public.games VALUES (93, 41, 510);
INSERT INTO public.games VALUES (94, 42, 808);
INSERT INTO public.games VALUES (95, 42, 94);
INSERT INTO public.games VALUES (96, 41, 185);
INSERT INTO public.games VALUES (97, 41, 166);
INSERT INTO public.games VALUES (98, 41, 441);
INSERT INTO public.games VALUES (99, 43, 417);
INSERT INTO public.games VALUES (100, 43, 300);
INSERT INTO public.games VALUES (101, 44, 72);
INSERT INTO public.games VALUES (102, 44, 829);
INSERT INTO public.games VALUES (103, 43, 477);
INSERT INTO public.games VALUES (104, 43, 103);
INSERT INTO public.games VALUES (105, 43, 255);
INSERT INTO public.games VALUES (106, 45, 6);
INSERT INTO public.games VALUES (107, 45, 1);
INSERT INTO public.games VALUES (108, 45, 3);
INSERT INTO public.games VALUES (109, 46, 673);
INSERT INTO public.games VALUES (110, 46, 219);
INSERT INTO public.games VALUES (111, 47, 615);
INSERT INTO public.games VALUES (112, 47, 203);
INSERT INTO public.games VALUES (113, 46, 20);
INSERT INTO public.games VALUES (114, 46, 873);
INSERT INTO public.games VALUES (115, 46, 154);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (35, 'user_1658149289199');
INSERT INTO public.users VALUES (36, 'user_1658149289198');
INSERT INTO public.users VALUES (37, 'user_1658149325939');
INSERT INTO public.users VALUES (38, 'user_1658149325938');
INSERT INTO public.users VALUES (39, 'user_1658149352566');
INSERT INTO public.users VALUES (40, 'user_1658149352565');
INSERT INTO public.users VALUES (41, 'user_1658149385165');
INSERT INTO public.users VALUES (42, 'user_1658149385164');
INSERT INTO public.users VALUES (43, 'user_1658149486105');
INSERT INTO public.users VALUES (44, 'user_1658149486104');
INSERT INTO public.users VALUES (45, 'kamal');
INSERT INTO public.users VALUES (46, 'user_1658149627660');
INSERT INTO public.users VALUES (47, 'user_1658149627659');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 115, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 47, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

