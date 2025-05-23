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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cursos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cursos (
    id_curso integer NOT NULL,
    nombre_curso character varying(100) NOT NULL,
    descripcion text,
    creditos integer,
    semestre character varying(20),
    id_departamento integer
);


ALTER TABLE public.cursos OWNER TO postgres;

--
-- Name: cursos_id_curso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cursos_id_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cursos_id_curso_seq OWNER TO postgres;

--
-- Name: cursos_id_curso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cursos_id_curso_seq OWNED BY public.cursos.id_curso;


--
-- Name: cursosprofesores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cursosprofesores (
    id_curso_profesor integer NOT NULL,
    id_curso integer,
    id_profesor integer
);


ALTER TABLE public.cursosprofesores OWNER TO postgres;

--
-- Name: cursosprofesores_id_curso_profesor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cursosprofesores_id_curso_profesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cursosprofesores_id_curso_profesor_seq OWNER TO postgres;

--
-- Name: cursosprofesores_id_curso_profesor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cursosprofesores_id_curso_profesor_seq OWNED BY public.cursosprofesores.id_curso_profesor;


--
-- Name: departamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamentos (
    id_departamento integer NOT NULL,
    nombre_departamento character varying(100) NOT NULL,
    edificio character varying(100)
);


ALTER TABLE public.departamentos OWNER TO postgres;

--
-- Name: departamentos_id_departamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departamentos_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departamentos_id_departamento_seq OWNER TO postgres;

--
-- Name: departamentos_id_departamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departamentos_id_departamento_seq OWNED BY public.departamentos.id_departamento;


--
-- Name: estudiantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estudiantes (
    id_estudiante integer NOT NULL,
    nombre_estudiante character varying(100) NOT NULL,
    apellidos_estudiante character varying(100) NOT NULL,
    fecha_nacimiento date,
    direccion_estudiante character varying(100),
    email_estudiante character varying(100) NOT NULL
);


ALTER TABLE public.estudiantes OWNER TO postgres;

--
-- Name: estudiantes_id_estudiante_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estudiantes_id_estudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estudiantes_id_estudiante_seq OWNER TO postgres;

--
-- Name: estudiantes_id_estudiante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estudiantes_id_estudiante_seq OWNED BY public.estudiantes.id_estudiante;


--
-- Name: inscripciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inscripciones (
    id_inscripcion integer NOT NULL,
    id_estudiante integer,
    id_curso integer,
    fecha_inscripcion date NOT NULL,
    calificacion numeric(4,2)
);


ALTER TABLE public.inscripciones OWNER TO postgres;

--
-- Name: inscripciones_id_inscripcion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inscripciones_id_inscripcion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inscripciones_id_inscripcion_seq OWNER TO postgres;

--
-- Name: inscripciones_id_inscripcion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inscripciones_id_inscripcion_seq OWNED BY public.inscripciones.id_inscripcion;


--
-- Name: profesores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesores (
    id_profesor integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    titulo character varying(100) NOT NULL,
    id_departamento integer
);


ALTER TABLE public.profesores OWNER TO postgres;

--
-- Name: profesores_id_profesor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profesores_id_profesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.profesores_id_profesor_seq OWNER TO postgres;

--
-- Name: profesores_id_profesor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profesores_id_profesor_seq OWNED BY public.profesores.id_profesor;


--
-- Name: programascursos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.programascursos (
    id_programa_curso integer NOT NULL,
    id_programa integer,
    id_curso integer
);


ALTER TABLE public.programascursos OWNER TO postgres;

--
-- Name: programascursos_id_programa_curso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.programascursos_id_programa_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.programascursos_id_programa_curso_seq OWNER TO postgres;

--
-- Name: programascursos_id_programa_curso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.programascursos_id_programa_curso_seq OWNED BY public.programascursos.id_programa_curso;


--
-- Name: programasestudio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.programasestudio (
    id_programa integer NOT NULL,
    nombre_programa character varying(100),
    descripcion_programa text
);


ALTER TABLE public.programasestudio OWNER TO postgres;

--
-- Name: programasestudio_id_programa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.programasestudio_id_programa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.programasestudio_id_programa_seq OWNER TO postgres;

--
-- Name: programasestudio_id_programa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.programasestudio_id_programa_seq OWNED BY public.programasestudio.id_programa;


--
-- Name: cursos id_curso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos ALTER COLUMN id_curso SET DEFAULT nextval('public.cursos_id_curso_seq'::regclass);


--
-- Name: cursosprofesores id_curso_profesor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursosprofesores ALTER COLUMN id_curso_profesor SET DEFAULT nextval('public.cursosprofesores_id_curso_profesor_seq'::regclass);


--
-- Name: departamentos id_departamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos ALTER COLUMN id_departamento SET DEFAULT nextval('public.departamentos_id_departamento_seq'::regclass);


--
-- Name: estudiantes id_estudiante; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiantes ALTER COLUMN id_estudiante SET DEFAULT nextval('public.estudiantes_id_estudiante_seq'::regclass);


--
-- Name: inscripciones id_inscripcion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscripciones ALTER COLUMN id_inscripcion SET DEFAULT nextval('public.inscripciones_id_inscripcion_seq'::regclass);


--
-- Name: profesores id_profesor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesores ALTER COLUMN id_profesor SET DEFAULT nextval('public.profesores_id_profesor_seq'::regclass);


--
-- Name: programascursos id_programa_curso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programascursos ALTER COLUMN id_programa_curso SET DEFAULT nextval('public.programascursos_id_programa_curso_seq'::regclass);


--
-- Name: programasestudio id_programa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programasestudio ALTER COLUMN id_programa SET DEFAULT nextval('public.programasestudio_id_programa_seq'::regclass);


--
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cursos (id_curso, nombre_curso, descripcion, creditos, semestre, id_departamento) FROM stdin;
1	Bases de Datos	Diseño de bases de datos relacionales y consultas SQL	4	Segundo	1
2	Marketing Digital	Técnicas de publicidad en redes sociales	3	Tercero	2
3	Psicología Cognitiva	Estudio de los procesos mentales	5	Cuarto	3
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
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamentos (id_departamento, nombre_departamento, edificio) FROM stdin;
1	Ingeniería	Edificio A
2	Administración	Edificio B
3	Psicología	Edificio C
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
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesores (id_profesor, nombre, apellido, titulo, id_departamento) FROM stdin;
1	Carlos	Ramírez	M.Sc. en Informática	1
2	Lucía	Hernández	Ph.D. en Psicología	3
3	Pedro	Martínez	Lic. en Administración	2
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
-- Data for Name: programasestudio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.programasestudio (id_programa, nombre_programa, descripcion_programa) FROM stdin;
1	Tecnologías de la Información	Programa enfocado en desarrollo de software y redes
2	Negocios	Gestión de empresas, economía y marketing
3	Ciencias Humanas	Estudios en sociología y psicología
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
-- Name: cursos cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (id_curso);


--
-- Name: cursosprofesores cursosprofesores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursosprofesores
    ADD CONSTRAINT cursosprofesores_pkey PRIMARY KEY (id_curso_profesor);


--
-- Name: departamentos departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (id_departamento);


--
-- Name: estudiantes estudiantes_email_estudiante_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_email_estudiante_key UNIQUE (email_estudiante);


--
-- Name: estudiantes estudiantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (id_estudiante);


--
-- Name: inscripciones inscripciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_pkey PRIMARY KEY (id_inscripcion);


--
-- Name: profesores profesores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (id_profesor);


--
-- Name: programascursos programascursos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programascursos
    ADD CONSTRAINT programascursos_pkey PRIMARY KEY (id_programa_curso);


--
-- Name: programasestudio programasestudio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programasestudio
    ADD CONSTRAINT programasestudio_pkey PRIMARY KEY (id_programa);


--
-- Name: cursos cursos_id_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES public.departamentos(id_departamento);


--
-- Name: cursosprofesores cursosprofesores_id_curso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursosprofesores
    ADD CONSTRAINT cursosprofesores_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.cursos(id_curso) ON DELETE CASCADE;


--
-- Name: cursosprofesores cursosprofesores_id_profesor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursosprofesores
    ADD CONSTRAINT cursosprofesores_id_profesor_fkey FOREIGN KEY (id_profesor) REFERENCES public.profesores(id_profesor) ON DELETE CASCADE;


--
-- Name: inscripciones inscripciones_id_curso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.cursos(id_curso) ON DELETE CASCADE;


--
-- Name: inscripciones inscripciones_id_estudiante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_id_estudiante_fkey FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_estudiante) ON DELETE CASCADE;


--
-- Name: profesores profesores_id_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES public.departamentos(id_departamento);


--
-- Name: programascursos programascursos_id_curso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programascursos
    ADD CONSTRAINT programascursos_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.cursos(id_curso) ON DELETE CASCADE;


--
-- Name: programascursos programascursos_id_programa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programascursos
    ADD CONSTRAINT programascursos_id_programa_fkey FOREIGN KEY (id_programa) REFERENCES public.programasestudio(id_programa) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

