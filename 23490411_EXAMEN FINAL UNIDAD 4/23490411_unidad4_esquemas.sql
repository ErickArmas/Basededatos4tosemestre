--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamentos (id_departamento, nombre_departamento, edificio) FROM stdin;
1	Ingeniería	Edificio A
2	Administración	Edificio B
3	Psicología	Edificio C
\.


--
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cursos (id_curso, nombre_curso, descripcion, creditos, semestre, id_departamento) FROM stdin;
1	Bases de Datos	Diseño de bases de datos relacionales y consultas SQL	4	Segundo	1
2	Marketing Digital	Técnicas de publicidad en redes sociales	3	Tercero	2
3	Psicología Cognitiva	Estudio de los procesos mentales	5	Cuarto	3
\.


--
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesores (id_profesor, nombre, apellido, titulo, id_departamento) FROM stdin;
1	Carlos	Ramírez	M.Sc. en Informática	1
2	Lucía	Hernández	Ph.D. en Psicología	3
3	Pedro	Martínez	Lic. en Administración	2
\.


--
-- Data for Name: cursosprofesores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cursosprofesores (id_curso_profesor, id_curso, id_profesor) FROM stdin;
1	1	1
2	2	2
3	3	3
4	1	2
\.


--
-- Data for Name: estudiantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudiantes (id_estudiante, nombre_estudiante, apellidos_estudiante, fecha_nacimiento, direccion_estudiante, email_estudiante) FROM stdin;
1	María	Pérez	1999-05-21	Calle Sol #123	maria.perez@gmail.com
2	Juan	López	2000-08-15	Av. Luna #456	juan.lopez@gmail.com
3	Ana	García	1998-03-10	Calle Río #789	ana.garcia@gmail.com
\.


--
-- Data for Name: inscripciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inscripciones (id_inscripcion, id_estudiante, id_curso, fecha_inscripcion, calificacion) FROM stdin;
1	1	1	2025-01-10	85.50
2	2	2	2025-01-12	90.00
3	3	3	2025-01-15	88.75
4	1	3	2025-01-20	92.00
\.


--
-- Data for Name: programasestudio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.programasestudio (id_programa, nombre_programa, descripcion_programa) FROM stdin;
1	Tecnologías de la Información	Programa enfocado en desarrollo de software y redes
2	Negocios	Gestión de empresas, economía y marketing
3	Ciencias Humanas	Estudios en sociología y psicología
\.


--
-- Data for Name: programascursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.programascursos (id_programa_curso, id_programa, id_curso) FROM stdin;
1	1	1
2	2	2
3	3	3
\.


--
-- Name: cursos_id_curso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cursos_id_curso_seq', 3, true);


--
-- Name: cursosprofesores_id_curso_profesor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cursosprofesores_id_curso_profesor_seq', 4, true);


--
-- Name: departamentos_id_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departamentos_id_departamento_seq', 3, true);


--
-- Name: estudiantes_id_estudiante_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estudiantes_id_estudiante_seq', 3, true);


--
-- Name: inscripciones_id_inscripcion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inscripciones_id_inscripcion_seq', 4, true);


--
-- Name: profesores_id_profesor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profesores_id_profesor_seq', 3, true);


--
-- Name: programascursos_id_programa_curso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.programascursos_id_programa_curso_seq', 3, true);


--
-- Name: programasestudio_id_programa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.programasestudio_id_programa_seq', 3, true);


--
-- PostgreSQL database dump complete
--

