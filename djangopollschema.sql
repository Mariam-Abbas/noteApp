--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: postgres; Type: COMMENT; Schema: -; Owner: azure_superuser
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: pg_buffercache; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_buffercache WITH SCHEMA public;


--
-- Name: EXTENSION pg_buffercache; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_buffercache IS 'examine the shared buffer cache';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: app_choice; Type: TABLE; Schema: public; 
--

CREATE TABLE app_choice (
    id integer NOT NULL,
    text character varying(200) NOT NULL,
    votes integer NOT NULL,
    poll_id integer NOT NULL
);


ALTER TABLE app_choice OWNER TO djadmin;

--
-- Name: app_choice_id_seq; Type: SEQUENCE; Schema: public; 
--

CREATE SEQUENCE app_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE app_choice_id_seq OWNER TO djadmin;

--
-- Name: app_choice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
--

ALTER SEQUENCE app_choice_id_seq OWNED BY app_choice.id;


--
-- Name: app_poll; Type: TABLE; Schema: public; 
--

CREATE TABLE app_poll (
    id integer NOT NULL,
    text character varying(200) NOT NULL,
    pub_date timestamp with time zone NOT NULL
);


ALTER TABLE app_poll OWNER TO djadmin;

--
-- Name: app_poll_id_seq; Type: SEQUENCE; Schema: public; 
--

CREATE SEQUENCE app_poll_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE app_poll_id_seq OWNER TO djadmin;

--
-- Name: app_poll_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
--

ALTER SEQUENCE app_poll_id_seq OWNED BY app_poll.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80)
);


ALTER TABLE auth_group OWNER TO djadmin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; 
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO djadmin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer,
    permission_id integer
);


ALTER TABLE auth_group_permissions OWNER TO djadmin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; 
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO djadmin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    content_type_id integer,
    codename character varying(100),
    name character varying(255)
);


ALTER TABLE auth_permission OWNER TO djadmin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; 
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO djadmin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128),
    last_login timestamp without time zone,
    is_superuser boolean,
    first_name character varying(30),
    last_name character varying(30),
    email character varying(254),
    is_staff boolean,
    is_active boolean,
    date_joined timestamp without time zone,
    username character varying(150)
);


ALTER TABLE auth_user OWNER TO djadmin;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer,
    group_id integer
);


ALTER TABLE auth_user_groups OWNER TO djadmin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; 
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO djadmin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; 
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO djadmin;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer,
    permission_id integer
);


ALTER TABLE auth_user_user_permissions OWNER TO djadmin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; 
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO djadmin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    object_id text,
    object_repr character varying(200),
    action_flag smallint,
    change_message text,
    content_type_id integer,
    user_id integer,
    action_time timestamp without time zone
);


ALTER TABLE django_admin_log OWNER TO djadmin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; 
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO djadmin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100),
    model character varying(100)
);


ALTER TABLE django_content_type OWNER TO djadmin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; 
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO djadmin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255),
    name character varying(255),
    applied timestamp without time zone
);


ALTER TABLE django_migrations OWNER TO djadmin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; 
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO djadmin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text,
    expire_date timestamp without time zone
);


ALTER TABLE django_session OWNER TO djadmin;

--
-- Name: django_site; Type: TABLE; Schema: public; 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100),
    name character varying(50)
);


ALTER TABLE django_site OWNER TO djadmin;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; 
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_site_id_seq OWNER TO djadmin;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; 
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: app_choice id; Type: DEFAULT; Schema: public; 
--

ALTER TABLE ONLY app_choice ALTER COLUMN id SET DEFAULT nextval('app_choice_id_seq'::regclass);


--
-- Name: app_poll id; Type: DEFAULT; Schema: public; 
--

ALTER TABLE ONLY app_poll ALTER COLUMN id SET DEFAULT nextval('app_poll_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; 
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; 
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; 
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; 
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; 
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; 
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; 
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; 
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; 
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; 
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Data for Name: app_choice; Type: TABLE DATA; Schema: public; 
--

COPY app_choice (id, text, votes, poll_id) FROM stdin;
\.


--
-- Name: app_choice_id_seq; Type: SEQUENCE SET; Schema: public; 
--

SELECT pg_catalog.setval('app_choice_id_seq', 1, false);


--
-- Data for Name: app_poll; Type: TABLE DATA; Schema: public; 
--

COPY app_poll (id, text, pub_date) FROM stdin;
\.


--
-- Name: app_poll_id_seq; Type: SEQUENCE SET; Schema: public; 
--

SELECT pg_catalog.setval('app_poll_id_seq', 1, false);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; 
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; 
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; 
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; 
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; 
--

COPY auth_permission (id, content_type_id, codename, name) FROM stdin;
1	1	add_permission	Can add permission
2	1	change_permission	Can change permission
3	1	delete_permission	Can delete permission
4	2	add_group	Can add group
5	2	change_group	Can change group
6	2	delete_group	Can delete group
7	3	add_user	Can add user
8	3	change_user	Can change user
9	3	delete_user	Can delete user
10	4	add_contenttype	Can add content type
11	4	change_contenttype	Can change content type
12	4	delete_contenttype	Can delete content type
13	5	add_session	Can add session
14	5	change_session	Can change session
15	5	delete_session	Can delete session
16	6	add_site	Can add site
17	6	change_site	Can change site
18	6	delete_site	Can delete site
19	7	add_logentry	Can add log entry
20	7	change_logentry	Can change log entry
21	7	delete_logentry	Can delete log entry
1	1	add_poll	Can add poll
2	1	change_poll	Can change poll
3	1	delete_poll	Can delete poll
4	2	add_choice	Can add choice
5	2	change_choice	Can change choice
6	2	delete_choice	Can delete choice
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; 
--

SELECT pg_catalog.setval('auth_permission_id_seq', 6, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; 
--



--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; 
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; 
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; 
--

SELECT pg_catalog.setval('auth_user_id_seq', 6, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; 
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
22	4	1
23	4	2
24	4	3
25	4	4
26	4	5
27	4	6
28	4	7
29	4	8
30	4	9
31	4	10
32	4	11
33	4	12
34	4	13
35	4	14
36	4	15
37	4	16
38	4	17
39	4	18
40	4	19
41	4	20
42	4	21
43	5	1
44	5	2
45	5	3
46	5	4
47	5	5
48	5	6
49	5	7
50	5	8
51	5	9
52	5	10
53	5	11
54	5	12
55	5	13
56	5	14
57	5	15
58	5	16
59	5	17
60	5	18
61	5	19
62	5	20
63	5	21
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; 
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 63, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; 
--

COPY django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) FROM stdin;
1	5	djadmin	1	[{"added": {}}]	3	1	2017-03-13 20:48:21.912807
2   5	djadmin	2	[{"changed": {"fields": ["first_name", "last_name", "email", "is_staff", "is_superuser"]}}]	3	1	2017-03-13 20:49:00.684669
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; 
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 11, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; 
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	auth	user
4	contenttypes	contenttype
5	sessions	session
6	sites	site
7	admin	logentry
1	app	poll
2	app	choice
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; 
--

SELECT pg_catalog.setval('django_content_type_id_seq', 2, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; 
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2014-09-22 21:54:37.646293
2	auth	0001_initial	2014-09-22 21:54:37.72442
3	sessions	0001_initial	2014-09-22 21:54:37.771299
4	sites	0001_initial	2014-09-22 21:54:37.802549
5	admin	0001_initial	2016-03-10 22:11:58.407076
6	admin	0002_logentry_remove_auto_add	2016-03-10 22:11:58.432096
7	contenttypes	0002_remove_content_type_name	2016-03-10 22:11:58.483141
8	auth	0002_alter_permission_name_max_length	2016-03-10 22:11:58.514166
9	auth	0003_alter_user_email_max_length	2016-03-10 22:11:58.546192
10	auth	0004_alter_user_username_opts	2016-03-10 22:11:58.575218
11	auth	0005_alter_user_last_login_null	2016-03-10 22:11:58.60224
12	auth	0006_require_contenttypes_0002	2016-03-10 22:11:58.609246
13	auth	0007_alter_validators_add_error_messages	2016-03-10 22:11:58.635268
1	auth	0008_alter_user_username_max_length	2017-02-09 17:55:22.349753
2	app	0001_initial	2017-03-13 18:14:52.514788
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; 
--

SELECT pg_catalog.setval('django_migrations_id_seq', 2, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; 
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; 
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; 
--

SELECT pg_catalog.setval('django_site_id_seq', 1, false);


--
-- Name: app_choice app_choice_pkey; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY app_choice
    ADD CONSTRAINT app_choice_pkey PRIMARY KEY (id);


--
-- Name: app_poll app_poll_pkey; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY app_poll
    ADD CONSTRAINT app_poll_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: app_choice_582e9e5a; Type: INDEX; Schema: public; 
--

CREATE INDEX app_choice_582e9e5a ON app_choice USING btree (poll_id);


--
-- Name: app_choice app_choice_poll_id_4d283973_fk_app_poll_id; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY app_choice
    ADD CONSTRAINT app_choice_poll_id_4d283973_fk_app_poll_id FOREIGN KEY (poll_id) REFERENCES app_poll(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: azure_superuser
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM azure_superuser;
GRANT ALL ON SCHEMA public TO azure_superuser;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

