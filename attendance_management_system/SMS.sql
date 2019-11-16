--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Result_system_declareresult; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Result_system_declareresult" (
    id integer NOT NULL,
    marks integer NOT NULL,
    select_class_id integer NOT NULL,
    select_student_id integer NOT NULL,
    select_subject_id integer
);


ALTER TABLE public."Result_system_declareresult" OWNER TO postgres;

--
-- Name: Result_system_declareresult_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Result_system_declareresult_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Result_system_declareresult_id_seq" OWNER TO postgres;

--
-- Name: Result_system_declareresult_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Result_system_declareresult_id_seq" OWNED BY public."Result_system_declareresult".id;


--
-- Name: Result_system_student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Result_system_student" (
    id integer NOT NULL,
    student_name character varying(100) NOT NULL,
    student_roll integer NOT NULL,
    student_email character varying(254) NOT NULL,
    student_gender character varying(8) NOT NULL,
    student_date_of_birth date NOT NULL,
    student_reg date NOT NULL,
    student_class_id integer NOT NULL
);


ALTER TABLE public."Result_system_student" OWNER TO postgres;

--
-- Name: Result_system_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Result_system_student_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Result_system_student_id_seq" OWNER TO postgres;

--
-- Name: Result_system_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Result_system_student_id_seq" OWNED BY public."Result_system_student".id;


--
-- Name: Result_system_studentclass; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Result_system_studentclass" (
    id integer NOT NULL,
    class_name character varying(100) NOT NULL,
    class_name_in_numeric integer NOT NULL,
    section character varying(10) NOT NULL,
    creation_date timestamp with time zone NOT NULL
);


ALTER TABLE public."Result_system_studentclass" OWNER TO postgres;

--
-- Name: Result_system_studentclass_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Result_system_studentclass_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Result_system_studentclass_id_seq" OWNER TO postgres;

--
-- Name: Result_system_studentclass_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Result_system_studentclass_id_seq" OWNED BY public."Result_system_studentclass".id;


--
-- Name: Result_system_subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Result_system_subject" (
    id integer NOT NULL,
    subject_name character varying(100) NOT NULL,
    subject_code integer NOT NULL,
    subject_creation_date timestamp with time zone NOT NULL,
    subject_update_date timestamp with time zone NOT NULL
);


ALTER TABLE public."Result_system_subject" OWNER TO postgres;

--
-- Name: Result_system_subject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Result_system_subject_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Result_system_subject_id_seq" OWNER TO postgres;

--
-- Name: Result_system_subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Result_system_subject_id_seq" OWNED BY public."Result_system_subject".id;


--
-- Name: Result_system_subjectcombination; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Result_system_subjectcombination" (
    id integer NOT NULL,
    select_class_id integer NOT NULL,
    select_subject_id integer NOT NULL
);


ALTER TABLE public."Result_system_subjectcombination" OWNER TO postgres;

--
-- Name: Result_system_subjectcombination_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Result_system_subjectcombination_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Result_system_subjectcombination_id_seq" OWNER TO postgres;

--
-- Name: Result_system_subjectcombination_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Result_system_subjectcombination_id_seq" OWNED BY public."Result_system_subjectcombination".id;


--
-- Name: attendance_allmessages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attendance_allmessages (
    id integer NOT NULL,
    message_text text NOT NULL,
    m_from integer NOT NULL,
    m_to character varying(500) NOT NULL,
    status integer NOT NULL,
    creation_date timestamp with time zone NOT NULL
);


ALTER TABLE public.attendance_allmessages OWNER TO postgres;

--
-- Name: attendance_daily_attendance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attendance_daily_attendance (
    id integer NOT NULL,
    student character varying(500) NOT NULL,
    section_id integer NOT NULL,
    attendance_date date NOT NULL,
    faculty integer NOT NULL,
    update_date timestamp with time zone NOT NULL
);


ALTER TABLE public.attendance_daily_attendance OWNER TO postgres;

--
-- Name: attendance_daily_attendance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attendance_daily_attendance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attendance_daily_attendance_id_seq OWNER TO postgres;

--
-- Name: attendance_daily_attendance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attendance_daily_attendance_id_seq OWNED BY public.attendance_daily_attendance.id;


--
-- Name: attendance_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attendance_messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attendance_messages_id_seq OWNER TO postgres;

--
-- Name: attendance_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attendance_messages_id_seq OWNED BY public.attendance_allmessages.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: home_facultys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_facultys (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(200) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    section_id integer NOT NULL
);


ALTER TABLE public.home_facultys OWNER TO postgres;

--
-- Name: home_facultys_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_facultys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_facultys_id_seq OWNER TO postgres;

--
-- Name: home_facultys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_facultys_id_seq OWNED BY public.home_facultys.id;


--
-- Name: home_sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_sections (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    creation_date timestamp with time zone NOT NULL
);


ALTER TABLE public.home_sections OWNER TO postgres;

--
-- Name: home_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_sections_id_seq OWNER TO postgres;

--
-- Name: home_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_sections_id_seq OWNED BY public.home_sections.id;


--
-- Name: home_students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_students (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    roll_no character varying(200) NOT NULL,
    email character varying(100) NOT NULL,
    mother_name character varying(201) NOT NULL,
    gender integer NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    section_id integer NOT NULL,
    phone integer NOT NULL,
    slug character varying(251) NOT NULL
);


ALTER TABLE public.home_students OWNER TO postgres;

--
-- Name: home_students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_students_id_seq OWNER TO postgres;

--
-- Name: home_students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_students_id_seq OWNED BY public.home_students.id;


--
-- Name: Result_system_declareresult id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_declareresult" ALTER COLUMN id SET DEFAULT nextval('public."Result_system_declareresult_id_seq"'::regclass);


--
-- Name: Result_system_student id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_student" ALTER COLUMN id SET DEFAULT nextval('public."Result_system_student_id_seq"'::regclass);


--
-- Name: Result_system_studentclass id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_studentclass" ALTER COLUMN id SET DEFAULT nextval('public."Result_system_studentclass_id_seq"'::regclass);


--
-- Name: Result_system_subject id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_subject" ALTER COLUMN id SET DEFAULT nextval('public."Result_system_subject_id_seq"'::regclass);


--
-- Name: Result_system_subjectcombination id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_subjectcombination" ALTER COLUMN id SET DEFAULT nextval('public."Result_system_subjectcombination_id_seq"'::regclass);


--
-- Name: attendance_allmessages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance_allmessages ALTER COLUMN id SET DEFAULT nextval('public.attendance_messages_id_seq'::regclass);


--
-- Name: attendance_daily_attendance id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance_daily_attendance ALTER COLUMN id SET DEFAULT nextval('public.attendance_daily_attendance_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: home_facultys id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_facultys ALTER COLUMN id SET DEFAULT nextval('public.home_facultys_id_seq'::regclass);


--
-- Name: home_sections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_sections ALTER COLUMN id SET DEFAULT nextval('public.home_sections_id_seq'::regclass);


--
-- Name: home_students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_students ALTER COLUMN id SET DEFAULT nextval('public.home_students_id_seq'::regclass);


--
-- Data for Name: Result_system_declareresult; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Result_system_declareresult" (id, marks, select_class_id, select_student_id, select_subject_id) FROM stdin;
4	80	1	1	1
5	90	2	3	1
\.


--
-- Data for Name: Result_system_student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Result_system_student" (id, student_name, student_roll, student_email, student_gender, student_date_of_birth, student_reg, student_class_id) FROM stdin;
1	Didarul	1	didarul38@gmail.com	Male	2019-03-14	2019-03-14	1
2	Tamim Islam	2	didarul37@gmail.com	Male	2008-03-14	2019-03-14	2
3	Anika Islam	3	didarul39@gmail.com	Female	2004-03-14	2019-03-14	3
\.


--
-- Data for Name: Result_system_studentclass; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Result_system_studentclass" (id, class_name, class_name_in_numeric, section, creation_date) FROM stdin;
1	Sixth	6	A	2019-03-14 01:37:12.370084+06
2	Sixth	6	B	2019-03-14 02:46:15.210659+06
3	Sixth	6	C	2019-03-14 02:47:26.445388+06
\.


--
-- Data for Name: Result_system_subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Result_system_subject" (id, subject_name, subject_code, subject_creation_date, subject_update_date) FROM stdin;
1	Mathematics	101	2019-03-14 01:44:16.650405+06	2019-03-14 01:44:16.650405+06
2	Bangla	102	2019-03-14 02:53:12.26266+06	2019-03-14 02:53:12.26266+06
\.


--
-- Data for Name: Result_system_subjectcombination; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Result_system_subjectcombination" (id, select_class_id, select_subject_id) FROM stdin;
\.


--
-- Data for Name: attendance_allmessages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attendance_allmessages (id, message_text, m_from, m_to, status, creation_date) FROM stdin;
\.


--
-- Data for Name: attendance_daily_attendance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attendance_daily_attendance (id, student, section_id, attendance_date, faculty, update_date) FROM stdin;
1		1	2019-02-28	1	2019-02-28 07:01:14.81778+06
2	1	1	2019-02-28	1	2019-02-28 07:01:30.727575+06
3	1	1	2019-02-28	1	2019-02-28 07:02:13.020387+06
4	2,1	1	2019-03-07	1	2019-03-07 00:42:51.71897+06
5		1	2019-03-07	1	2019-03-07 00:43:32.320983+06
6	2	1	2019-03-07	1	2019-03-07 09:32:43.114316+06
7	3,2,1	1	2019-03-14	2	2019-03-14 09:41:21.747871+06
8	3,2,1	1	2019-03-14	2	2019-03-14 09:56:48.246445+06
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add students	1	add_students
2	Can change students	1	change_students
3	Can delete students	1	delete_students
4	Can add facultys	2	add_facultys
5	Can change facultys	2	change_facultys
6	Can delete facultys	2	delete_facultys
7	Can add sections	3	add_sections
8	Can change sections	3	change_sections
9	Can delete sections	3	delete_sections
10	Can add log entry	4	add_logentry
11	Can change log entry	4	change_logentry
12	Can delete log entry	4	delete_logentry
13	Can add permission	5	add_permission
14	Can change permission	5	change_permission
15	Can delete permission	5	delete_permission
16	Can add group	6	add_group
17	Can change group	6	change_group
18	Can delete group	6	delete_group
19	Can add user	7	add_user
20	Can change user	7	change_user
21	Can delete user	7	delete_user
22	Can add content type	8	add_contenttype
23	Can change content type	8	change_contenttype
24	Can delete content type	8	delete_contenttype
25	Can add session	9	add_session
26	Can change session	9	change_session
27	Can delete session	9	delete_session
28	Can add daily_attendance	10	add_daily_attendance
29	Can change daily_attendance	10	change_daily_attendance
30	Can delete daily_attendance	10	delete_daily_attendance
31	Can add allmessages	11	add_allmessages
32	Can change allmessages	11	change_allmessages
33	Can delete allmessages	11	delete_allmessages
34	Can view students	1	view_students
35	Can view facultys	2	view_facultys
36	Can view sections	3	view_sections
37	Can view log entry	4	view_logentry
38	Can view permission	5	view_permission
39	Can view group	6	view_group
40	Can view user	7	view_user
41	Can view content type	8	view_contenttype
42	Can view session	9	view_session
43	Can view daily_attendance	10	view_daily_attendance
44	Can view allmessages	11	view_allmessages
45	Can add declare result	12	add_declareresult
46	Can change declare result	12	change_declareresult
47	Can delete declare result	12	delete_declareresult
48	Can view declare result	12	view_declareresult
49	Can add student class	13	add_studentclass
50	Can change student class	13	change_studentclass
51	Can delete student class	13	delete_studentclass
52	Can view student class	13	view_studentclass
53	Can add student	14	add_student
54	Can change student	14	change_student
55	Can delete student	14	delete_student
56	Can view student	14	view_student
57	Can add subject combination	15	add_subjectcombination
58	Can change subject combination	15	change_subjectcombination
59	Can delete subject combination	15	delete_subjectcombination
60	Can view subject combination	15	view_subjectcombination
61	Can add subject	16	add_subject
62	Can change subject	16	change_subject
63	Can delete subject	16	delete_subject
64	Can view subject	16	view_subject
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$LGriIJ2BPJNv$Swg+3VqeGmEunc3M2yYE5TourBbj6OaDNghY+LAIkvg=	2019-02-28 06:26:44.501571+06	t	admin			didarul38@gmail.com	t	t	2019-02-28 06:26:33.406779+06
2	pbkdf2_sha256$120000$w596w8EYdkTT$qmoU5G0E/zaoJYW3ohY818qjBt5+z/Ca/Zir1melPPo=	2019-03-14 01:34:02.888115+06	t	didarul38@gmail.com			didarul38@gmail.com	t	t	2019-03-14 00:39:18.831069+06
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-02-28 06:28:18.862978+06	1	A	1	[{"added": {}}]	3	1
2	2019-02-28 06:28:22.380536+06	1	Didarul didarul38@gmail.com	1	[{"added": {}}]	2	1
3	2019-03-14 00:43:12.728923+06	2	B	1	[{"added": {}}]	3	2
4	2019-03-14 00:43:25.815953+06	3	C	1	[{"added": {}}]	3	2
5	2019-03-14 00:44:38.806066+06	1	Didarul didarul38@gmail.com	2	[{"changed": {"fields": ["section"]}}]	2	2
6	2019-03-14 00:45:14.13168+06	2	B	3		3	2
7	2019-03-14 00:45:38.635277+06	2	Didarul didarul38@gmail.com	1	[{"added": {}}]	2	2
8	2019-03-14 00:45:57.113729+06	3	Tamim Islam didarul.amin1@gmail.com	1	[{"added": {}}]	2	2
9	2019-03-14 01:37:12.378091+06	1	Sixth Section-A	1	[{"added": {}}]	13	2
10	2019-03-14 01:37:40.31355+06	1	Didarul	1	[{"added": {}}]	14	2
11	2019-03-14 01:44:16.669734+06	1	Mathematics	1	[{"added": {}}]	16	2
12	2019-03-14 01:44:37.094243+06	1	Sixth Section-A	1	[{"added": {}}]	15	2
13	2019-03-14 02:22:54.783659+06	2	Sixth Section-A	1	[{"added": {}}]	15	2
14	2019-03-14 02:39:41.585143+06	4	Sixth Section-A	1	[{"added": {}}]	12	2
15	2019-03-14 02:46:15.227851+06	2	Sixth Section-B	1	[{"added": {}}]	13	2
16	2019-03-14 02:46:43.746593+06	2	Tamim Islam	1	[{"added": {}}]	14	2
17	2019-03-14 02:47:26.446339+06	3	Sixth Section-C	1	[{"added": {}}]	13	2
18	2019-03-14 02:47:36.979489+06	3	Anika Islam	1	[{"added": {}}]	14	2
19	2019-03-14 02:48:35.001213+06	1	Sixth Section-A	3		15	2
20	2019-03-14 02:50:16.407673+06	2	Sixth Section-A	3		15	2
21	2019-03-14 02:51:59.792618+06	5	Sixth Section-B	1	[{"added": {}}]	12	2
22	2019-03-14 02:53:12.263621+06	2	Bangla	1	[{"added": {}}]	16	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	home	students
2	home	facultys
3	home	sections
4	admin	logentry
5	auth	permission
6	auth	group
7	auth	user
8	contenttypes	contenttype
9	sessions	session
10	attendance	daily_attendance
11	attendance	allmessages
12	Result_system	declareresult
13	Result_system	studentclass
14	Result_system	student
15	Result_system	subjectcombination
16	Result_system	subject
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-02-28 06:23:30.314185+06
2	auth	0001_initial	2019-02-28 06:23:30.588094+06
3	admin	0001_initial	2019-02-28 06:23:30.638946+06
4	admin	0002_logentry_remove_auto_add	2019-02-28 06:23:30.647924+06
5	home	0001_initial	2019-02-28 06:23:30.71366+06
6	home	0002_auto_20170827_0100	2019-02-28 06:23:30.824046+06
7	home	0003_auto_20170827_0118	2019-02-28 06:23:32.917096+06
8	home	0004_auto_20170827_0121	2019-02-28 06:23:32.960973+06
9	home	0005_auto_20170830_0312	2019-02-28 06:23:32.97693+06
10	home	0006_students_phone	2019-02-28 06:23:32.984425+06
11	attendance	0001_initial	2019-02-28 06:23:33.004354+06
12	attendance	0002_auto_20170912_0303	2019-02-28 06:23:33.068415+06
13	attendance	0003_auto_20170915_0123	2019-02-28 06:23:33.106517+06
14	attendance	0004_auto_20170920_0302	2019-02-28 06:23:33.124468+06
15	attendance	0005_auto_20170920_0311	2019-02-28 06:23:33.1742+06
16	attendance	0006_messages	2019-02-28 06:23:33.206492+06
17	attendance	0007_auto_20171002_0145	2019-02-28 06:23:33.222494+06
18	attendance	0008_auto_20171002_2314	2019-02-28 06:23:33.227607+06
19	attendance	0009_auto_20171006_0245	2019-02-28 06:23:33.256459+06
20	contenttypes	0002_remove_content_type_name	2019-02-28 06:23:33.279469+06
21	auth	0002_alter_permission_name_max_length	2019-02-28 06:23:33.288237+06
22	auth	0003_alter_user_email_max_length	2019-02-28 06:23:33.301037+06
23	auth	0004_alter_user_username_opts	2019-02-28 06:23:33.311994+06
24	auth	0005_alter_user_last_login_null	2019-02-28 06:23:33.324004+06
25	auth	0006_require_contenttypes_0002	2019-02-28 06:23:33.325959+06
26	auth	0007_alter_validators_add_error_messages	2019-02-28 06:23:33.337928+06
27	auth	0008_alter_user_username_max_length	2019-02-28 06:23:33.370986+06
28	auth	0009_alter_user_last_name_max_length	2019-02-28 06:23:33.383843+06
29	home	0007_students_slug	2019-02-28 06:23:33.417753+06
30	sessions	0001_initial	2019-02-28 06:23:33.468367+06
31	admin	0003_logentry_add_action_flag_choices	2019-03-14 01:29:44.149041+06
32	Result_system	0001_initial	2019-03-14 01:31:43.459668+06
33	Result_system	0002_auto_20190314_0217	2019-03-14 02:17:45.585957+06
34	Result_system	0003_auto_20190314_0227	2019-03-14 02:27:44.24545+06
35	Result_system	0004_auto_20190314_0232	2019-03-14 02:32:06.606099+06
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ybflegrzgbj0mmmxz85jcfta6t8p3wt6	ZWM0YWQyNTdmNGM2ZDlhNGY2MTU2NDgyNmMwODIzNTM3ZWZkOWIzOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjc5Y2FmZGIwZDBhOGVmYjE3MjIxNmM3ZTEwMTkyZjA4NTQ3ZjFhIn0=	2019-03-21 09:03:23.280549+06
d54hor1akzz407h49dguhf67bjawuu2r	NjU4NTViOTc3MzljYzczMDA1ZGQzNDYyNzMzMWZlNGZjNjNiNjEyZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNTczMWY3MWE4YzdjZGNmOGUxNDkxYjMyY2ZkMzU1ZDJjMjMyODI3In0=	2019-03-28 00:39:40.055997+06
dq8kij1k2tpbsaobd6bdgtn64hmfm4lu	MTZkZjAxOWZiZDVjMzlkMmM2MDU1NWE5MWNhYTY4MWUwMTdkNzA4NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNTczMWY3MWE4YzdjZGNmOGUxNDkxYjMyY2ZkMzU1ZDJjMjMyODI3IiwiZmFjdWx0eSI6Mn0=	2019-03-28 09:04:33.49368+06
q9snr4b5ufz6vlpmtmrqo4ixtvsvvgas	MTE1MTg3MzY5NWNiMjdmMDJmZTBiYmJkZThiM2UxMGYzZmU0ZTRkZjp7ImZhY3VsdHkiOjJ9	2019-04-05 22:39:01.987783+06
8xwy5wjv1olfx9ghd5umyx54g9bpe8d4	MTE1MTg3MzY5NWNiMjdmMDJmZTBiYmJkZThiM2UxMGYzZmU0ZTRkZjp7ImZhY3VsdHkiOjJ9	2019-04-11 09:03:26.280498+06
\.


--
-- Data for Name: home_facultys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_facultys (id, name, email, password, creation_date, section_id) FROM stdin;
2	Didarul	didarul38@gmail.com	admin123	2019-03-14 01:15:24+06	1
3	Tamim Islam	didarul.amin1@gmail.com	admin123	2019-03-14 01:15:42+06	3
\.


--
-- Data for Name: home_sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_sections (id, name, creation_date) FROM stdin;
1	A	2019-02-28 06:58:11+06
3	C	2019-03-14 01:13:22+06
\.


--
-- Data for Name: home_students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_students (id, name, roll_no, email, mother_name, gender, creation_date, section_id, phone, slug) FROM stdin;
1	Didarul	A20191	didarul38@gmail.com	ratna	1	2019-02-28 06:59:37.324714+06	1	1953194703	didarul
2	Amir	A20192	didarul.amin1@gmail.com	farida	1	2019-03-07 00:42:38.638501+06	1	1953194703	amir
3	Tamim	A20193	didarul38@gmail.com	nnjksk	1	2019-03-14 09:37:07.733828+06	1	1913305154	tamim
\.


--
-- Name: Result_system_declareresult_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Result_system_declareresult_id_seq"', 5, true);


--
-- Name: Result_system_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Result_system_student_id_seq"', 3, true);


--
-- Name: Result_system_studentclass_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Result_system_studentclass_id_seq"', 3, true);


--
-- Name: Result_system_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Result_system_subject_id_seq"', 2, true);


--
-- Name: Result_system_subjectcombination_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Result_system_subjectcombination_id_seq"', 2, true);


--
-- Name: attendance_daily_attendance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attendance_daily_attendance_id_seq', 8, true);


--
-- Name: attendance_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attendance_messages_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 22, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 35, true);


--
-- Name: home_facultys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_facultys_id_seq', 3, true);


--
-- Name: home_sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_sections_id_seq', 3, true);


--
-- Name: home_students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_students_id_seq', 3, true);


--
-- Name: Result_system_declareresult Result_system_declareresult_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_declareresult"
    ADD CONSTRAINT "Result_system_declareresult_pkey" PRIMARY KEY (id);


--
-- Name: Result_system_student Result_system_student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_student"
    ADD CONSTRAINT "Result_system_student_pkey" PRIMARY KEY (id);


--
-- Name: Result_system_student Result_system_student_student_roll_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_student"
    ADD CONSTRAINT "Result_system_student_student_roll_key" UNIQUE (student_roll);


--
-- Name: Result_system_studentclass Result_system_studentclass_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_studentclass"
    ADD CONSTRAINT "Result_system_studentclass_pkey" PRIMARY KEY (id);


--
-- Name: Result_system_subject Result_system_subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_subject"
    ADD CONSTRAINT "Result_system_subject_pkey" PRIMARY KEY (id);


--
-- Name: Result_system_subjectcombination Result_system_subjectcombination_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_subjectcombination"
    ADD CONSTRAINT "Result_system_subjectcombination_pkey" PRIMARY KEY (id);


--
-- Name: attendance_daily_attendance attendance_daily_attendance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance_daily_attendance
    ADD CONSTRAINT attendance_daily_attendance_pkey PRIMARY KEY (id);


--
-- Name: attendance_allmessages attendance_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance_allmessages
    ADD CONSTRAINT attendance_messages_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_facultys home_facultys_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_facultys
    ADD CONSTRAINT home_facultys_email_key UNIQUE (email);


--
-- Name: home_facultys home_facultys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_facultys
    ADD CONSTRAINT home_facultys_pkey PRIMARY KEY (id);


--
-- Name: home_sections home_sections_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_sections
    ADD CONSTRAINT home_sections_name_key UNIQUE (name);


--
-- Name: home_sections home_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_sections
    ADD CONSTRAINT home_sections_pkey PRIMARY KEY (id);


--
-- Name: home_students home_students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_students
    ADD CONSTRAINT home_students_pkey PRIMARY KEY (id);


--
-- Name: Result_system_declareresult_select_class_id_e9c8108a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Result_system_declareresult_select_class_id_e9c8108a" ON public."Result_system_declareresult" USING btree (select_class_id);


--
-- Name: Result_system_declareresult_select_student_id_b8c3132c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Result_system_declareresult_select_student_id_b8c3132c" ON public."Result_system_declareresult" USING btree (select_student_id);


--
-- Name: Result_system_declareresult_select_subject_id_ee65ce2e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Result_system_declareresult_select_subject_id_ee65ce2e" ON public."Result_system_declareresult" USING btree (select_subject_id);


--
-- Name: Result_system_student_student_class_id_a6bc293b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Result_system_student_student_class_id_a6bc293b" ON public."Result_system_student" USING btree (student_class_id);


--
-- Name: Result_system_subjectcombination_select_class_id_3eb2bb4c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Result_system_subjectcombination_select_class_id_3eb2bb4c" ON public."Result_system_subjectcombination" USING btree (select_class_id);


--
-- Name: Result_system_subjectcombination_select_subject_id_433d14f4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Result_system_subjectcombination_select_subject_id_433d14f4" ON public."Result_system_subjectcombination" USING btree (select_subject_id);


--
-- Name: attendance_daily_attendance_section_id_e33a1d1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX attendance_daily_attendance_section_id_e33a1d1c ON public.attendance_daily_attendance USING btree (section_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: home_facultys_email_8b11fa0a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_facultys_email_8b11fa0a_like ON public.home_facultys USING btree (email varchar_pattern_ops);


--
-- Name: home_facultys_section_id_f91dc827; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_facultys_section_id_f91dc827 ON public.home_facultys USING btree (section_id);


--
-- Name: home_sections_name_a7a7f730_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_sections_name_a7a7f730_like ON public.home_sections USING btree (name varchar_pattern_ops);


--
-- Name: home_students_section_id_be6d62c4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_students_section_id_be6d62c4 ON public.home_students USING btree (section_id);


--
-- Name: home_students_slug_cfd83834; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_students_slug_cfd83834 ON public.home_students USING btree (slug);


--
-- Name: home_students_slug_cfd83834_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_students_slug_cfd83834_like ON public.home_students USING btree (slug varchar_pattern_ops);


--
-- Name: Result_system_declareresult Result_system_declar_select_class_id_e9c8108a_fk_Result_sy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_declareresult"
    ADD CONSTRAINT "Result_system_declar_select_class_id_e9c8108a_fk_Result_sy" FOREIGN KEY (select_class_id) REFERENCES public."Result_system_studentclass"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Result_system_declareresult Result_system_declar_select_student_id_b8c3132c_fk_Result_sy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_declareresult"
    ADD CONSTRAINT "Result_system_declar_select_student_id_b8c3132c_fk_Result_sy" FOREIGN KEY (select_student_id) REFERENCES public."Result_system_student"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Result_system_declareresult Result_system_declar_select_subject_id_ee65ce2e_fk_Result_sy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_declareresult"
    ADD CONSTRAINT "Result_system_declar_select_subject_id_ee65ce2e_fk_Result_sy" FOREIGN KEY (select_subject_id) REFERENCES public."Result_system_subject"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Result_system_student Result_system_studen_student_class_id_a6bc293b_fk_Result_sy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_student"
    ADD CONSTRAINT "Result_system_studen_student_class_id_a6bc293b_fk_Result_sy" FOREIGN KEY (student_class_id) REFERENCES public."Result_system_studentclass"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Result_system_subjectcombination Result_system_subjec_select_class_id_3eb2bb4c_fk_Result_sy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_subjectcombination"
    ADD CONSTRAINT "Result_system_subjec_select_class_id_3eb2bb4c_fk_Result_sy" FOREIGN KEY (select_class_id) REFERENCES public."Result_system_studentclass"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Result_system_subjectcombination Result_system_subjec_select_subject_id_433d14f4_fk_Result_sy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Result_system_subjectcombination"
    ADD CONSTRAINT "Result_system_subjec_select_subject_id_433d14f4_fk_Result_sy" FOREIGN KEY (select_subject_id) REFERENCES public."Result_system_subject"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: attendance_daily_attendance attendance_daily_att_section_id_e33a1d1c_fk_home_sect; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendance_daily_attendance
    ADD CONSTRAINT attendance_daily_att_section_id_e33a1d1c_fk_home_sect FOREIGN KEY (section_id) REFERENCES public.home_sections(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_facultys home_facultys_section_id_f91dc827_fk_home_sections_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_facultys
    ADD CONSTRAINT home_facultys_section_id_f91dc827_fk_home_sections_id FOREIGN KEY (section_id) REFERENCES public.home_sections(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_students home_students_section_id_be6d62c4_fk_home_sections_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_students
    ADD CONSTRAINT home_students_section_id_be6d62c4_fk_home_sections_id FOREIGN KEY (section_id) REFERENCES public.home_sections(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

