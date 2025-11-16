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
    user_id integer NOT NULL,
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

INSERT INTO public.games VALUES (1, 1, 572);
INSERT INTO public.games VALUES (2, 1, 931);
INSERT INTO public.games VALUES (3, 2, 522);
INSERT INTO public.games VALUES (4, 2, 193);
INSERT INTO public.games VALUES (5, 1, 133);
INSERT INTO public.games VALUES (6, 1, 767);
INSERT INTO public.games VALUES (7, 1, 863);
INSERT INTO public.games VALUES (8, 3, 11);
INSERT INTO public.games VALUES (9, 4, 344);
INSERT INTO public.games VALUES (10, 4, 630);
INSERT INTO public.games VALUES (11, 5, 341);
INSERT INTO public.games VALUES (12, 5, 963);
INSERT INTO public.games VALUES (13, 4, 79);
INSERT INTO public.games VALUES (14, 4, 517);
INSERT INTO public.games VALUES (15, 4, 325);
INSERT INTO public.games VALUES (16, 6, 78);
INSERT INTO public.games VALUES (17, 6, 708);
INSERT INTO public.games VALUES (18, 7, 93);
INSERT INTO public.games VALUES (19, 7, 407);
INSERT INTO public.games VALUES (20, 6, 575);
INSERT INTO public.games VALUES (21, 6, 962);
INSERT INTO public.games VALUES (22, 6, 648);
INSERT INTO public.games VALUES (23, 8, 821);
INSERT INTO public.games VALUES (24, 8, 402);
INSERT INTO public.games VALUES (25, 9, 326);
INSERT INTO public.games VALUES (26, 9, 259);
INSERT INTO public.games VALUES (27, 8, 39);
INSERT INTO public.games VALUES (28, 8, 499);
INSERT INTO public.games VALUES (29, 8, 609);
INSERT INTO public.games VALUES (30, 10, 0);
INSERT INTO public.games VALUES (31, 10, 0);
INSERT INTO public.games VALUES (32, 11, 0);
INSERT INTO public.games VALUES (33, 11, 0);
INSERT INTO public.games VALUES (34, 10, 0);
INSERT INTO public.games VALUES (35, 10, 1);
INSERT INTO public.games VALUES (36, 10, 0);
INSERT INTO public.games VALUES (37, 12, 725);
INSERT INTO public.games VALUES (38, 12, 101);
INSERT INTO public.games VALUES (39, 13, 782);
INSERT INTO public.games VALUES (40, 13, 200);
INSERT INTO public.games VALUES (41, 12, 55);
INSERT INTO public.games VALUES (42, 12, 454);
INSERT INTO public.games VALUES (43, 12, 90);
INSERT INTO public.games VALUES (44, 14, 685);
INSERT INTO public.games VALUES (45, 14, 944);
INSERT INTO public.games VALUES (46, 15, 897);
INSERT INTO public.games VALUES (47, 15, 315);
INSERT INTO public.games VALUES (48, 14, 689);
INSERT INTO public.games VALUES (49, 14, 113);
INSERT INTO public.games VALUES (50, 14, 685);
INSERT INTO public.games VALUES (51, 16, 217);
INSERT INTO public.games VALUES (52, 16, 442);
INSERT INTO public.games VALUES (53, 17, 53);
INSERT INTO public.games VALUES (54, 17, 950);
INSERT INTO public.games VALUES (55, 16, 389);
INSERT INTO public.games VALUES (56, 16, 414);
INSERT INTO public.games VALUES (57, 16, 473);
INSERT INTO public.games VALUES (58, 18, 662);
INSERT INTO public.games VALUES (59, 18, 956);
INSERT INTO public.games VALUES (60, 19, 392);
INSERT INTO public.games VALUES (61, 19, 943);
INSERT INTO public.games VALUES (62, 18, 391);
INSERT INTO public.games VALUES (63, 18, 266);
INSERT INTO public.games VALUES (64, 18, 391);
INSERT INTO public.games VALUES (65, 20, 96);
INSERT INTO public.games VALUES (66, 20, 185);
INSERT INTO public.games VALUES (67, 21, 44);
INSERT INTO public.games VALUES (68, 21, 212);
INSERT INTO public.games VALUES (69, 20, 139);
INSERT INTO public.games VALUES (70, 20, 893);
INSERT INTO public.games VALUES (71, 20, 718);
INSERT INTO public.games VALUES (72, 22, 505);
INSERT INTO public.games VALUES (73, 22, 207);
INSERT INTO public.games VALUES (74, 23, 160);
INSERT INTO public.games VALUES (75, 23, 754);
INSERT INTO public.games VALUES (76, 22, 765);
INSERT INTO public.games VALUES (77, 22, 497);
INSERT INTO public.games VALUES (78, 22, 827);
INSERT INTO public.games VALUES (79, 24, 267);
INSERT INTO public.games VALUES (80, 24, 10);
INSERT INTO public.games VALUES (81, 25, 259);
INSERT INTO public.games VALUES (82, 25, 52);
INSERT INTO public.games VALUES (83, 24, 309);
INSERT INTO public.games VALUES (84, 24, 460);
INSERT INTO public.games VALUES (85, 24, 257);
INSERT INTO public.games VALUES (86, 26, 930);
INSERT INTO public.games VALUES (87, 26, 57);
INSERT INTO public.games VALUES (88, 27, 106);
INSERT INTO public.games VALUES (89, 27, 950);
INSERT INTO public.games VALUES (90, 26, 199);
INSERT INTO public.games VALUES (91, 26, 755);
INSERT INTO public.games VALUES (92, 26, 469);
INSERT INTO public.games VALUES (93, 28, 25);
INSERT INTO public.games VALUES (94, 28, 234);
INSERT INTO public.games VALUES (95, 29, 194);
INSERT INTO public.games VALUES (96, 29, 870);
INSERT INTO public.games VALUES (97, 28, 815);
INSERT INTO public.games VALUES (98, 28, 897);
INSERT INTO public.games VALUES (99, 28, 473);
INSERT INTO public.games VALUES (100, 30, 610);
INSERT INTO public.games VALUES (101, 30, 429);
INSERT INTO public.games VALUES (102, 31, 767);
INSERT INTO public.games VALUES (103, 31, 79);
INSERT INTO public.games VALUES (104, 30, 409);
INSERT INTO public.games VALUES (105, 30, 859);
INSERT INTO public.games VALUES (106, 30, 615);
INSERT INTO public.games VALUES (107, 32, 853);
INSERT INTO public.games VALUES (108, 32, 697);
INSERT INTO public.games VALUES (109, 33, 825);
INSERT INTO public.games VALUES (110, 33, 685);
INSERT INTO public.games VALUES (111, 32, 382);
INSERT INTO public.games VALUES (112, 32, 359);
INSERT INTO public.games VALUES (113, 32, 860);
INSERT INTO public.games VALUES (114, 34, 531);
INSERT INTO public.games VALUES (115, 34, 877);
INSERT INTO public.games VALUES (116, 35, 789);
INSERT INTO public.games VALUES (117, 35, 998);
INSERT INTO public.games VALUES (118, 34, 278);
INSERT INTO public.games VALUES (119, 34, 431);
INSERT INTO public.games VALUES (120, 34, 442);
INSERT INTO public.games VALUES (121, 36, 240);
INSERT INTO public.games VALUES (122, 36, 861);
INSERT INTO public.games VALUES (123, 37, 799);
INSERT INTO public.games VALUES (124, 37, 554);
INSERT INTO public.games VALUES (125, 36, 923);
INSERT INTO public.games VALUES (126, 36, 287);
INSERT INTO public.games VALUES (127, 36, 649);
INSERT INTO public.games VALUES (128, 38, 363);
INSERT INTO public.games VALUES (129, 38, 920);
INSERT INTO public.games VALUES (130, 39, 900);
INSERT INTO public.games VALUES (131, 39, 109);
INSERT INTO public.games VALUES (132, 38, 920);
INSERT INTO public.games VALUES (133, 38, 594);
INSERT INTO public.games VALUES (134, 38, 443);
INSERT INTO public.games VALUES (135, 40, 400);
INSERT INTO public.games VALUES (136, 40, 386);
INSERT INTO public.games VALUES (137, 41, 427);
INSERT INTO public.games VALUES (138, 41, 101);
INSERT INTO public.games VALUES (139, 40, 999);
INSERT INTO public.games VALUES (140, 40, 245);
INSERT INTO public.games VALUES (141, 40, 148);
INSERT INTO public.games VALUES (142, 42, 770);
INSERT INTO public.games VALUES (143, 42, 559);
INSERT INTO public.games VALUES (144, 43, 933);
INSERT INTO public.games VALUES (145, 43, 970);
INSERT INTO public.games VALUES (146, 42, 642);
INSERT INTO public.games VALUES (147, 42, 938);
INSERT INTO public.games VALUES (148, 42, 808);
INSERT INTO public.games VALUES (149, 44, 279);
INSERT INTO public.games VALUES (150, 44, 434);
INSERT INTO public.games VALUES (151, 45, 707);
INSERT INTO public.games VALUES (152, 45, 271);
INSERT INTO public.games VALUES (153, 44, 526);
INSERT INTO public.games VALUES (154, 44, 117);
INSERT INTO public.games VALUES (155, 44, 978);
INSERT INTO public.games VALUES (156, 46, 31);
INSERT INTO public.games VALUES (157, 46, 752);
INSERT INTO public.games VALUES (158, 47, 526);
INSERT INTO public.games VALUES (159, 47, 307);
INSERT INTO public.games VALUES (160, 46, 459);
INSERT INTO public.games VALUES (161, 46, 937);
INSERT INTO public.games VALUES (162, 46, 737);
INSERT INTO public.games VALUES (163, 48, 903);
INSERT INTO public.games VALUES (164, 48, 919);
INSERT INTO public.games VALUES (165, 49, 824);
INSERT INTO public.games VALUES (166, 49, 242);
INSERT INTO public.games VALUES (167, 48, 222);
INSERT INTO public.games VALUES (168, 48, 311);
INSERT INTO public.games VALUES (169, 48, 965);
INSERT INTO public.games VALUES (170, 50, 915);
INSERT INTO public.games VALUES (171, 50, 390);
INSERT INTO public.games VALUES (172, 51, 414);
INSERT INTO public.games VALUES (173, 51, 160);
INSERT INTO public.games VALUES (174, 50, 593);
INSERT INTO public.games VALUES (175, 50, 682);
INSERT INTO public.games VALUES (176, 50, 792);
INSERT INTO public.games VALUES (177, 52, 874);
INSERT INTO public.games VALUES (178, 52, 443);
INSERT INTO public.games VALUES (179, 53, 921);
INSERT INTO public.games VALUES (180, 53, 284);
INSERT INTO public.games VALUES (181, 52, 673);
INSERT INTO public.games VALUES (182, 52, 842);
INSERT INTO public.games VALUES (183, 52, 425);
INSERT INTO public.games VALUES (184, 54, 495);
INSERT INTO public.games VALUES (185, 54, 715);
INSERT INTO public.games VALUES (186, 55, 492);
INSERT INTO public.games VALUES (187, 55, 768);
INSERT INTO public.games VALUES (188, 54, 154);
INSERT INTO public.games VALUES (189, 54, 635);
INSERT INTO public.games VALUES (190, 54, 563);
INSERT INTO public.games VALUES (191, 56, 268);
INSERT INTO public.games VALUES (192, 56, 991);
INSERT INTO public.games VALUES (193, 57, 479);
INSERT INTO public.games VALUES (194, 57, 153);
INSERT INTO public.games VALUES (195, 56, 663);
INSERT INTO public.games VALUES (196, 56, 182);
INSERT INTO public.games VALUES (197, 56, 821);
INSERT INTO public.games VALUES (198, 58, 883);
INSERT INTO public.games VALUES (199, 58, 811);
INSERT INTO public.games VALUES (200, 59, 444);
INSERT INTO public.games VALUES (201, 59, 580);
INSERT INTO public.games VALUES (202, 58, 209);
INSERT INTO public.games VALUES (203, 58, 20);
INSERT INTO public.games VALUES (204, 58, 460);
INSERT INTO public.games VALUES (205, 60, 451);
INSERT INTO public.games VALUES (206, 60, 289);
INSERT INTO public.games VALUES (207, 61, 987);
INSERT INTO public.games VALUES (208, 61, 388);
INSERT INTO public.games VALUES (209, 60, 638);
INSERT INTO public.games VALUES (210, 60, 467);
INSERT INTO public.games VALUES (211, 60, 374);
INSERT INTO public.games VALUES (212, 62, 82);
INSERT INTO public.games VALUES (213, 62, 268);
INSERT INTO public.games VALUES (214, 63, 184);
INSERT INTO public.games VALUES (215, 63, 696);
INSERT INTO public.games VALUES (216, 62, 399);
INSERT INTO public.games VALUES (217, 62, 603);
INSERT INTO public.games VALUES (218, 62, 148);
INSERT INTO public.games VALUES (219, 64, 509);
INSERT INTO public.games VALUES (220, 64, 286);
INSERT INTO public.games VALUES (221, 65, 249);
INSERT INTO public.games VALUES (222, 65, 227);
INSERT INTO public.games VALUES (223, 64, 439);
INSERT INTO public.games VALUES (224, 64, 853);
INSERT INTO public.games VALUES (225, 64, 990);
INSERT INTO public.games VALUES (226, 66, 988);
INSERT INTO public.games VALUES (227, 66, 828);
INSERT INTO public.games VALUES (228, 67, 500);
INSERT INTO public.games VALUES (229, 67, 72);
INSERT INTO public.games VALUES (230, 66, 370);
INSERT INTO public.games VALUES (231, 66, 375);
INSERT INTO public.games VALUES (232, 66, 88);
INSERT INTO public.games VALUES (233, 68, 59);
INSERT INTO public.games VALUES (234, 68, 606);
INSERT INTO public.games VALUES (235, 69, 629);
INSERT INTO public.games VALUES (236, 69, 137);
INSERT INTO public.games VALUES (237, 68, 345);
INSERT INTO public.games VALUES (238, 68, 742);
INSERT INTO public.games VALUES (239, 68, 469);
INSERT INTO public.games VALUES (240, 70, 655);
INSERT INTO public.games VALUES (241, 70, 408);
INSERT INTO public.games VALUES (242, 71, 766);
INSERT INTO public.games VALUES (243, 71, 815);
INSERT INTO public.games VALUES (244, 70, 801);
INSERT INTO public.games VALUES (245, 70, 537);
INSERT INTO public.games VALUES (246, 70, 199);
INSERT INTO public.games VALUES (247, 72, 712);
INSERT INTO public.games VALUES (248, 72, 538);
INSERT INTO public.games VALUES (249, 73, 567);
INSERT INTO public.games VALUES (250, 73, 791);
INSERT INTO public.games VALUES (251, 72, 562);
INSERT INTO public.games VALUES (252, 72, 231);
INSERT INTO public.games VALUES (253, 72, 692);
INSERT INTO public.games VALUES (254, 74, 777);
INSERT INTO public.games VALUES (255, 74, 391);
INSERT INTO public.games VALUES (256, 75, 699);
INSERT INTO public.games VALUES (257, 75, 435);
INSERT INTO public.games VALUES (258, 74, 473);
INSERT INTO public.games VALUES (259, 74, 1001);
INSERT INTO public.games VALUES (260, 74, 327);
INSERT INTO public.games VALUES (261, 76, 996);
INSERT INTO public.games VALUES (262, 76, 414);
INSERT INTO public.games VALUES (263, 77, 677);
INSERT INTO public.games VALUES (264, 77, 983);
INSERT INTO public.games VALUES (265, 76, 490);
INSERT INTO public.games VALUES (266, 76, 65);
INSERT INTO public.games VALUES (267, 76, 717);
INSERT INTO public.games VALUES (268, 78, 17);
INSERT INTO public.games VALUES (269, 78, 371);
INSERT INTO public.games VALUES (270, 79, 966);
INSERT INTO public.games VALUES (271, 79, 689);
INSERT INTO public.games VALUES (272, 78, 307);
INSERT INTO public.games VALUES (273, 78, 326);
INSERT INTO public.games VALUES (274, 78, 451);
INSERT INTO public.games VALUES (275, 80, 964);
INSERT INTO public.games VALUES (276, 80, 277);
INSERT INTO public.games VALUES (277, 81, 600);
INSERT INTO public.games VALUES (278, 81, 47);
INSERT INTO public.games VALUES (279, 80, 676);
INSERT INTO public.games VALUES (280, 80, 690);
INSERT INTO public.games VALUES (281, 80, 590);
INSERT INTO public.games VALUES (282, 82, 147);
INSERT INTO public.games VALUES (283, 82, 145);
INSERT INTO public.games VALUES (284, 83, 286);
INSERT INTO public.games VALUES (285, 83, 220);
INSERT INTO public.games VALUES (286, 82, 51);
INSERT INTO public.games VALUES (287, 82, 644);
INSERT INTO public.games VALUES (288, 82, 756);
INSERT INTO public.games VALUES (289, 84, 108);
INSERT INTO public.games VALUES (290, 84, 465);
INSERT INTO public.games VALUES (291, 85, 457);
INSERT INTO public.games VALUES (292, 85, 786);
INSERT INTO public.games VALUES (293, 84, 735);
INSERT INTO public.games VALUES (294, 84, 50);
INSERT INTO public.games VALUES (295, 84, 434);
INSERT INTO public.games VALUES (296, 86, 515);
INSERT INTO public.games VALUES (297, 86, 988);
INSERT INTO public.games VALUES (298, 87, 26);
INSERT INTO public.games VALUES (299, 87, 648);
INSERT INTO public.games VALUES (300, 86, 593);
INSERT INTO public.games VALUES (301, 86, 794);
INSERT INTO public.games VALUES (302, 86, 70);
INSERT INTO public.games VALUES (303, 88, 783);
INSERT INTO public.games VALUES (304, 88, 476);
INSERT INTO public.games VALUES (305, 89, 511);
INSERT INTO public.games VALUES (306, 89, 277);
INSERT INTO public.games VALUES (307, 88, 327);
INSERT INTO public.games VALUES (308, 88, 196);
INSERT INTO public.games VALUES (309, 88, 517);
INSERT INTO public.games VALUES (310, 90, 785);
INSERT INTO public.games VALUES (311, 90, 937);
INSERT INTO public.games VALUES (312, 91, 136);
INSERT INTO public.games VALUES (313, 91, 783);
INSERT INTO public.games VALUES (314, 90, 541);
INSERT INTO public.games VALUES (315, 90, 97);
INSERT INTO public.games VALUES (316, 90, 46);
INSERT INTO public.games VALUES (317, 92, 475);
INSERT INTO public.games VALUES (318, 92, 454);
INSERT INTO public.games VALUES (319, 93, 778);
INSERT INTO public.games VALUES (320, 93, 608);
INSERT INTO public.games VALUES (321, 92, 936);
INSERT INTO public.games VALUES (322, 92, 179);
INSERT INTO public.games VALUES (323, 92, 749);
INSERT INTO public.games VALUES (324, 94, 540);
INSERT INTO public.games VALUES (325, 94, 857);
INSERT INTO public.games VALUES (326, 95, 834);
INSERT INTO public.games VALUES (327, 95, 349);
INSERT INTO public.games VALUES (328, 94, 574);
INSERT INTO public.games VALUES (329, 94, 522);
INSERT INTO public.games VALUES (330, 94, 372);
INSERT INTO public.games VALUES (331, 96, 706);
INSERT INTO public.games VALUES (332, 96, 943);
INSERT INTO public.games VALUES (333, 97, 844);
INSERT INTO public.games VALUES (334, 97, 538);
INSERT INTO public.games VALUES (335, 96, 447);
INSERT INTO public.games VALUES (336, 96, 681);
INSERT INTO public.games VALUES (337, 96, 44);
INSERT INTO public.games VALUES (338, 98, 42);
INSERT INTO public.games VALUES (339, 98, 588);
INSERT INTO public.games VALUES (340, 99, 918);
INSERT INTO public.games VALUES (341, 99, 822);
INSERT INTO public.games VALUES (342, 98, 482);
INSERT INTO public.games VALUES (343, 98, 944);
INSERT INTO public.games VALUES (344, 98, 599);
INSERT INTO public.games VALUES (345, 100, 1001);
INSERT INTO public.games VALUES (346, 100, 39);
INSERT INTO public.games VALUES (347, 101, 372);
INSERT INTO public.games VALUES (348, 101, 458);
INSERT INTO public.games VALUES (349, 100, 255);
INSERT INTO public.games VALUES (350, 100, 592);
INSERT INTO public.games VALUES (351, 100, 181);
INSERT INTO public.games VALUES (352, 102, 651);
INSERT INTO public.games VALUES (353, 102, 226);
INSERT INTO public.games VALUES (354, 103, 837);
INSERT INTO public.games VALUES (355, 103, 518);
INSERT INTO public.games VALUES (356, 102, 411);
INSERT INTO public.games VALUES (357, 102, 201);
INSERT INTO public.games VALUES (358, 102, 39);
INSERT INTO public.games VALUES (359, 104, 775);
INSERT INTO public.games VALUES (360, 104, 314);
INSERT INTO public.games VALUES (361, 105, 827);
INSERT INTO public.games VALUES (362, 105, 614);
INSERT INTO public.games VALUES (363, 104, 311);
INSERT INTO public.games VALUES (364, 104, 879);
INSERT INTO public.games VALUES (365, 104, 219);
INSERT INTO public.games VALUES (366, 106, 169);
INSERT INTO public.games VALUES (367, 106, 51);
INSERT INTO public.games VALUES (368, 107, 614);
INSERT INTO public.games VALUES (369, 107, 780);
INSERT INTO public.games VALUES (370, 106, 446);
INSERT INTO public.games VALUES (371, 106, 629);
INSERT INTO public.games VALUES (372, 106, 454);
INSERT INTO public.games VALUES (373, 108, 692);
INSERT INTO public.games VALUES (374, 108, 357);
INSERT INTO public.games VALUES (375, 109, 775);
INSERT INTO public.games VALUES (376, 109, 518);
INSERT INTO public.games VALUES (377, 108, 415);
INSERT INTO public.games VALUES (378, 108, 238);
INSERT INTO public.games VALUES (379, 108, 841);
INSERT INTO public.games VALUES (380, 110, 490);
INSERT INTO public.games VALUES (381, 110, 187);
INSERT INTO public.games VALUES (382, 111, 926);
INSERT INTO public.games VALUES (383, 111, 386);
INSERT INTO public.games VALUES (384, 110, 142);
INSERT INTO public.games VALUES (385, 110, 406);
INSERT INTO public.games VALUES (386, 110, 714);
INSERT INTO public.games VALUES (387, 112, 75);
INSERT INTO public.games VALUES (388, 112, 41);
INSERT INTO public.games VALUES (389, 113, 773);
INSERT INTO public.games VALUES (390, 113, 617);
INSERT INTO public.games VALUES (391, 112, 543);
INSERT INTO public.games VALUES (392, 112, 441);
INSERT INTO public.games VALUES (393, 112, 939);
INSERT INTO public.games VALUES (394, 114, 144);
INSERT INTO public.games VALUES (395, 114, 564);
INSERT INTO public.games VALUES (396, 115, 988);
INSERT INTO public.games VALUES (397, 115, 169);
INSERT INTO public.games VALUES (398, 114, 945);
INSERT INTO public.games VALUES (399, 114, 446);
INSERT INTO public.games VALUES (400, 114, 515);
INSERT INTO public.games VALUES (401, 116, 121);
INSERT INTO public.games VALUES (402, 116, 79);
INSERT INTO public.games VALUES (403, 117, 768);
INSERT INTO public.games VALUES (404, 117, 757);
INSERT INTO public.games VALUES (405, 116, 727);
INSERT INTO public.games VALUES (406, 116, 219);
INSERT INTO public.games VALUES (407, 116, 746);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1763275212679');
INSERT INTO public.users VALUES (2, 'user_1763275212678');
INSERT INTO public.users VALUES (3, 'Denys');
INSERT INTO public.users VALUES (4, 'user_1763276161291');
INSERT INTO public.users VALUES (5, 'user_1763276161290');
INSERT INTO public.users VALUES (6, 'user_1763276255597');
INSERT INTO public.users VALUES (7, 'user_1763276255596');
INSERT INTO public.users VALUES (8, 'user_1763276305832');
INSERT INTO public.users VALUES (9, 'user_1763276305831');
INSERT INTO public.users VALUES (10, 'user_1763276530189');
INSERT INTO public.users VALUES (11, 'user_1763276530188');
INSERT INTO public.users VALUES (12, 'user_1763276553852');
INSERT INTO public.users VALUES (13, 'user_1763276553851');
INSERT INTO public.users VALUES (14, 'user_1763276565859');
INSERT INTO public.users VALUES (15, 'user_1763276565858');
INSERT INTO public.users VALUES (16, 'user_1763276860549');
INSERT INTO public.users VALUES (17, 'user_1763276860548');
INSERT INTO public.users VALUES (18, 'user_1763276873474');
INSERT INTO public.users VALUES (19, 'user_1763276873473');
INSERT INTO public.users VALUES (20, 'user_1763277158654');
INSERT INTO public.users VALUES (21, 'user_1763277158653');
INSERT INTO public.users VALUES (22, 'user_1763277227521');
INSERT INTO public.users VALUES (23, 'user_1763277227520');
INSERT INTO public.users VALUES (24, 'user_1763277240429');
INSERT INTO public.users VALUES (25, 'user_1763277240428');
INSERT INTO public.users VALUES (26, 'user_1763277412835');
INSERT INTO public.users VALUES (27, 'user_1763277412833');
INSERT INTO public.users VALUES (28, 'user_1763277421100');
INSERT INTO public.users VALUES (29, 'user_1763277421099');
INSERT INTO public.users VALUES (30, 'user_1763277430966');
INSERT INTO public.users VALUES (31, 'user_1763277430965');
INSERT INTO public.users VALUES (32, 'user_1763277583898');
INSERT INTO public.users VALUES (33, 'user_1763277583897');
INSERT INTO public.users VALUES (34, 'user_1763278437884');
INSERT INTO public.users VALUES (35, 'user_1763278437883');
INSERT INTO public.users VALUES (36, 'user_1763278446030');
INSERT INTO public.users VALUES (37, 'user_1763278446029');
INSERT INTO public.users VALUES (38, 'user_1763278460109');
INSERT INTO public.users VALUES (39, 'user_1763278460108');
INSERT INTO public.users VALUES (40, 'user_1763278465557');
INSERT INTO public.users VALUES (41, 'user_1763278465556');
INSERT INTO public.users VALUES (42, 'user_1763278472024');
INSERT INTO public.users VALUES (43, 'user_1763278472023');
INSERT INTO public.users VALUES (44, 'user_1763278479240');
INSERT INTO public.users VALUES (45, 'user_1763278479239');
INSERT INTO public.users VALUES (46, 'user_1763278485367');
INSERT INTO public.users VALUES (47, 'user_1763278485366');
INSERT INTO public.users VALUES (48, 'user_1763278492319');
INSERT INTO public.users VALUES (49, 'user_1763278492318');
INSERT INTO public.users VALUES (50, 'user_1763278622544');
INSERT INTO public.users VALUES (51, 'user_1763278622543');
INSERT INTO public.users VALUES (52, 'user_1763278627733');
INSERT INTO public.users VALUES (53, 'user_1763278627732');
INSERT INTO public.users VALUES (54, 'user_1763278654819');
INSERT INTO public.users VALUES (55, 'user_1763278654818');
INSERT INTO public.users VALUES (56, 'user_1763278663253');
INSERT INTO public.users VALUES (57, 'user_1763278663252');
INSERT INTO public.users VALUES (58, 'user_1763278671056');
INSERT INTO public.users VALUES (59, 'user_1763278671055');
INSERT INTO public.users VALUES (60, 'user_1763278676302');
INSERT INTO public.users VALUES (61, 'user_1763278676301');
INSERT INTO public.users VALUES (62, 'user_1763279023543');
INSERT INTO public.users VALUES (63, 'user_1763279023542');
INSERT INTO public.users VALUES (64, 'user_1763279095092');
INSERT INTO public.users VALUES (65, 'user_1763279095091');
INSERT INTO public.users VALUES (66, 'user_1763279324367');
INSERT INTO public.users VALUES (67, 'user_1763279324366');
INSERT INTO public.users VALUES (68, 'user_1763279334563');
INSERT INTO public.users VALUES (69, 'user_1763279334562');
INSERT INTO public.users VALUES (70, 'user_1763279339609');
INSERT INTO public.users VALUES (71, 'user_1763279339608');
INSERT INTO public.users VALUES (72, 'user_1763279346989');
INSERT INTO public.users VALUES (73, 'user_1763279346988');
INSERT INTO public.users VALUES (74, 'user_1763279351651');
INSERT INTO public.users VALUES (75, 'user_1763279351650');
INSERT INTO public.users VALUES (76, 'user_1763279843843');
INSERT INTO public.users VALUES (77, 'user_1763279843842');
INSERT INTO public.users VALUES (78, 'user_1763279852945');
INSERT INTO public.users VALUES (79, 'user_1763279852944');
INSERT INTO public.users VALUES (80, 'user_1763279858054');
INSERT INTO public.users VALUES (81, 'user_1763279858053');
INSERT INTO public.users VALUES (82, 'user_1763280565591');
INSERT INTO public.users VALUES (83, 'user_1763280565590');
INSERT INTO public.users VALUES (84, 'user_1763280577030');
INSERT INTO public.users VALUES (85, 'user_1763280577029');
INSERT INTO public.users VALUES (86, 'user_1763280640882');
INSERT INTO public.users VALUES (87, 'user_1763280640881');
INSERT INTO public.users VALUES (88, 'user_1763280648900');
INSERT INTO public.users VALUES (89, 'user_1763280648899');
INSERT INTO public.users VALUES (90, 'user_1763281133772');
INSERT INTO public.users VALUES (91, 'user_1763281133771');
INSERT INTO public.users VALUES (92, 'user_1763281141932');
INSERT INTO public.users VALUES (93, 'user_1763281141931');
INSERT INTO public.users VALUES (94, 'user_1763281150510');
INSERT INTO public.users VALUES (95, 'user_1763281150509');
INSERT INTO public.users VALUES (96, 'user_1763281158219');
INSERT INTO public.users VALUES (97, 'user_1763281158218');
INSERT INTO public.users VALUES (98, 'user_1763281165201');
INSERT INTO public.users VALUES (99, 'user_1763281165200');
INSERT INTO public.users VALUES (100, 'user_1763281663294');
INSERT INTO public.users VALUES (101, 'user_1763281663292');
INSERT INTO public.users VALUES (102, 'user_1763281670669');
INSERT INTO public.users VALUES (103, 'user_1763281670668');
INSERT INTO public.users VALUES (104, 'user_1763281678574');
INSERT INTO public.users VALUES (105, 'user_1763281678573');
INSERT INTO public.users VALUES (106, 'user_1763281683962');
INSERT INTO public.users VALUES (107, 'user_1763281683961');
INSERT INTO public.users VALUES (108, 'user_1763281897066');
INSERT INTO public.users VALUES (109, 'user_1763281897065');
INSERT INTO public.users VALUES (110, 'user_1763282259588');
INSERT INTO public.users VALUES (111, 'user_1763282259587');
INSERT INTO public.users VALUES (112, 'user_1763282268752');
INSERT INTO public.users VALUES (113, 'user_1763282268751');
INSERT INTO public.users VALUES (114, 'user_1763282274666');
INSERT INTO public.users VALUES (115, 'user_1763282274665');
INSERT INTO public.users VALUES (116, 'user_1763282280081');
INSERT INTO public.users VALUES (117, 'user_1763282280080');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 407, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 117, true);


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

