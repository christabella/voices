--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO super;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO super;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO super;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO super;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO super;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO super;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO super;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO super;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO super;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO super;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO super;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO super;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: conf_setting; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE conf_setting (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    value character varying(2000) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE conf_setting OWNER TO super;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE conf_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conf_setting_id_seq OWNER TO super;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE conf_setting_id_seq OWNED BY conf_setting.id;


--
-- Name: core_sitepermission; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE core_sitepermission (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE core_sitepermission OWNER TO super;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE core_sitepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_sitepermission_id_seq OWNER TO super;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE core_sitepermission_id_seq OWNED BY core_sitepermission.id;


--
-- Name: core_sitepermission_sites; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE core_sitepermission_sites (
    id integer NOT NULL,
    sitepermission_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE core_sitepermission_sites OWNER TO super;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE core_sitepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_sitepermission_sites_id_seq OWNER TO super;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE core_sitepermission_sites_id_seq OWNED BY core_sitepermission_sites.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO super;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO super;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_comment_flags; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE django_comment_flags (
    id integer NOT NULL,
    flag character varying(30) NOT NULL,
    flag_date timestamp with time zone NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE django_comment_flags OWNER TO super;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE django_comment_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_comment_flags_id_seq OWNER TO super;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE django_comment_flags_id_seq OWNED BY django_comment_flags.id;


--
-- Name: django_comments; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE django_comments (
    id integer NOT NULL,
    object_pk text NOT NULL,
    user_name character varying(50) NOT NULL,
    user_email character varying(254) NOT NULL,
    user_url character varying(200) NOT NULL,
    comment text NOT NULL,
    submit_date timestamp with time zone NOT NULL,
    ip_address inet,
    is_public boolean NOT NULL,
    is_removed boolean NOT NULL,
    content_type_id integer NOT NULL,
    site_id integer NOT NULL,
    user_id integer
);


ALTER TABLE django_comments OWNER TO super;

--
-- Name: django_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE django_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_comments_id_seq OWNER TO super;

--
-- Name: django_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE django_comments_id_seq OWNED BY django_comments.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO super;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO super;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO super;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO super;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_redirect; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE django_redirect (
    id integer NOT NULL,
    site_id integer NOT NULL,
    old_path character varying(200) NOT NULL,
    new_path character varying(200) NOT NULL
);


ALTER TABLE django_redirect OWNER TO super;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE django_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_redirect_id_seq OWNER TO super;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE django_redirect_id_seq OWNED BY django_redirect.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO super;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE django_site OWNER TO super;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_site_id_seq OWNER TO super;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: generic_assignedkeyword; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE generic_assignedkeyword (
    id integer NOT NULL,
    _order integer,
    object_pk integer NOT NULL,
    content_type_id integer NOT NULL,
    keyword_id integer NOT NULL
);


ALTER TABLE generic_assignedkeyword OWNER TO super;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE generic_assignedkeyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generic_assignedkeyword_id_seq OWNER TO super;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE generic_assignedkeyword_id_seq OWNED BY generic_assignedkeyword.id;


--
-- Name: generic_keyword; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE generic_keyword (
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000),
    site_id integer NOT NULL
);


ALTER TABLE generic_keyword OWNER TO super;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE generic_keyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generic_keyword_id_seq OWNER TO super;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE generic_keyword_id_seq OWNED BY generic_keyword.id;


--
-- Name: generic_rating; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE generic_rating (
    id integer NOT NULL,
    value integer NOT NULL,
    rating_date timestamp with time zone,
    object_pk integer NOT NULL,
    content_type_id integer NOT NULL,
    user_id integer
);


ALTER TABLE generic_rating OWNER TO super;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE generic_rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generic_rating_id_seq OWNER TO super;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE generic_rating_id_seq OWNED BY generic_rating.id;


--
-- Name: generic_threadedcomment; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE generic_threadedcomment (
    comment_ptr_id integer NOT NULL,
    rating_count integer NOT NULL,
    rating_sum integer NOT NULL,
    rating_average double precision NOT NULL,
    by_author boolean NOT NULL,
    replied_to_id integer
);


ALTER TABLE generic_threadedcomment OWNER TO super;

--
-- Name: links_link; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE links_link (
    id integer NOT NULL,
    comments_count integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    rating_count integer NOT NULL,
    rating_sum integer NOT NULL,
    rating_average double precision NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000),
    _meta_title character varying(500),
    description text NOT NULL,
    gen_description boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone,
    status integer NOT NULL,
    publish_date timestamp with time zone,
    expiry_date timestamp with time zone,
    short_url character varying(200),
    in_sitemap boolean NOT NULL,
    link character varying(200),
    site_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE links_link OWNER TO super;

--
-- Name: links_link_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE links_link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE links_link_id_seq OWNER TO super;

--
-- Name: links_link_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE links_link_id_seq OWNED BY links_link.id;


--
-- Name: links_profile; Type: TABLE; Schema: public; Owner: super; Tablespace: 
--

CREATE TABLE links_profile (
    id integer NOT NULL,
    website character varying(200) NOT NULL,
    bio text NOT NULL,
    karma integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE links_profile OWNER TO super;

--
-- Name: links_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: super
--

CREATE SEQUENCE links_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE links_profile_id_seq OWNER TO super;

--
-- Name: links_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: super
--

ALTER SEQUENCE links_profile_id_seq OWNED BY links_profile.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY conf_setting ALTER COLUMN id SET DEFAULT nextval('conf_setting_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY core_sitepermission ALTER COLUMN id SET DEFAULT nextval('core_sitepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY core_sitepermission_sites ALTER COLUMN id SET DEFAULT nextval('core_sitepermission_sites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_comment_flags ALTER COLUMN id SET DEFAULT nextval('django_comment_flags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_comments ALTER COLUMN id SET DEFAULT nextval('django_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_redirect ALTER COLUMN id SET DEFAULT nextval('django_redirect_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY generic_assignedkeyword ALTER COLUMN id SET DEFAULT nextval('generic_assignedkeyword_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY generic_keyword ALTER COLUMN id SET DEFAULT nextval('generic_keyword_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY generic_rating ALTER COLUMN id SET DEFAULT nextval('generic_rating_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY links_link ALTER COLUMN id SET DEFAULT nextval('links_link_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: super
--

ALTER TABLE ONLY links_profile ALTER COLUMN id SET DEFAULT nextval('links_profile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: super
--

COPY auth_group (id, name) FROM stdin;
1	hearing
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: super
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: super
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add redirect	5	add_redirect
14	Can change redirect	5	change_redirect
15	Can delete redirect	5	delete_redirect
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add site	7	add_site
20	Can change site	7	change_site
21	Can delete site	7	delete_site
22	Can add link	8	add_link
23	Can change link	8	change_link
24	Can delete link	8	delete_link
25	Can add profile	9	add_profile
26	Can change profile	9	change_profile
27	Can delete profile	9	delete_profile
28	Can add Setting	10	add_setting
29	Can change Setting	10	change_setting
30	Can delete Setting	10	delete_setting
31	Can add Site permission	11	add_sitepermission
32	Can change Site permission	11	change_sitepermission
33	Can delete Site permission	11	delete_sitepermission
34	Can add Comment	12	add_threadedcomment
35	Can change Comment	12	change_threadedcomment
36	Can delete Comment	12	delete_threadedcomment
37	Can add Keyword	13	add_keyword
38	Can change Keyword	13	change_keyword
39	Can delete Keyword	13	delete_keyword
40	Can add assigned keyword	14	add_assignedkeyword
41	Can change assigned keyword	14	change_assignedkeyword
42	Can delete assigned keyword	14	delete_assignedkeyword
43	Can add Rating	15	add_rating
44	Can change Rating	15	change_rating
45	Can delete Rating	15	delete_rating
46	Can add log entry	16	add_logentry
47	Can change log entry	16	change_logentry
48	Can delete log entry	16	delete_logentry
49	Can add comment	17	add_comment
50	Can change comment	17	change_comment
51	Can delete comment	17	delete_comment
52	Can moderate comments	17	can_moderate
53	Can add comment flag	18	add_commentflag
54	Can change comment flag	18	change_commentflag
55	Can delete comment flag	18	delete_commentflag
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('auth_permission_id_seq', 55, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: super
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$20000$k07zySySmaUC$2dIk+X3ktck84C2zcODOImGpqlFT2kt7ZMkkxCFmrV4=	2015-08-21 08:25:42.592156+00	f	tsaik0	Ken	Chua	kenchuat@gmail.com	f	t	2015-08-21 08:25:42.475867+00
3	pbkdf2_sha256$20000$8vy5q23QCH1B$pz01aW8lhqVTxcFbuz1WOjAKa8+xZNCVitFk7UHFZD8=	2015-08-28 07:36:37.623895+00	f	bella	Christabella	Irwanto	christabella@mymail.sutd.edu.sg	f	t	2015-08-28 07:36:36.64026+00
5	pbkdf2_sha256$20000$FgkeZcTDKPbJ$IGoJctlgIX/AuGgNwXvvBplVxlkP491yhtXUYDvGPRo=	2015-08-31 05:37:35.909537+00	f	gohtalang	Ta	Lang	gohtalang@yahoo.com.sg	f	t	2015-08-29 04:15:49.725948+00
6	pbkdf2_sha256$20000$iVdAUDJhNLoK$g3ZBpF3GcDbDgYTaCl9D+xlqAIIekWl6P/mkDUNqc6E=	2015-09-01 02:26:29.791486+00	f	eloise	Eloise	Lim	noisysound@hotmail.com	f	t	2015-09-01 02:26:29.625114+00
7	pbkdf2_sha256$20000$9tSwNRYXd339$HUS7UFxRbnLTFulCdQq1rjI4kkDJB2d7A/Wc/BEh3Mg=	2015-09-01 02:36:55.534713+00	f	adeline	Adeline	Ranjan	adelinedivyaranjan@gmail.com	f	t	2015-09-01 02:36:55.392651+00
8	pbkdf2_sha256$20000$ie2RY2jcHgaJ$hfRum7cB3D9bbqbykqF7awElEVg92XRLAnvL5kn690I=	2015-09-01 02:43:28.307657+00	f	Zhafri	Muhd.Zhafri	Bin Adam	Muhd.Zhafri@hotmail.sg	f	t	2015-09-01 02:43:27.883814+00
9	pbkdf2_sha256$20000$E2P0OqqYrpCJ$Ctt7ii5d9xwF3iCLoe+ayucE2TR78PgX5nr3/XpCNEQ=	2015-09-01 03:17:02.293978+00	f	Caiyu	Caiyu	Ke	kcaiyu@gmail.com	f	t	2015-09-01 03:17:02.099087+00
10	pbkdf2_sha256$20000$qFiKZh9jXdsQ$NZ3llbL23246HuVm44TbMqAXyU2uWoTFR9FMyL4cpJo=	2015-09-01 04:48:59.118336+00	f	Ely	Elyana	Delphynium	norlianamdajam@gmail.com	f	t	2015-09-01 04:48:58.891215+00
4	pbkdf2_sha256$20000$AbSAfYmO1cL9$2BxB5d2ZamYhYyixl7rJkxW4IdXor/RDQ7bP5iAsK60=	2015-09-01 06:11:28.797124+00	f	Wesley	Wesley	Tan	wesley@bizpower.org	f	t	2015-08-29 03:45:33.022905+00
12	pbkdf2_sha256$20000$ernMUx9ge6ep$EFoxBJRz3nDs+/Kxnx5yGVpEQqs8u/ptftUhDVIcXlg=	2015-09-01 06:45:27.719937+00	f	mabel	Mabel	Yee	mabelyeekwanbee@gmail.com	f	t	2015-09-01 06:45:27.577283+00
13	pbkdf2_sha256$20000$H5dm9qgLDtLP$6mN4ZlXDpySMLebHCfFwvLFos/lQ50rVTAQs1B1r/sA=	2015-09-01 06:52:37.405262+00	f	kevin	Kevin 	Lim	kevin.lim@live.com.sg	f	t	2015-09-01 06:52:36.224802+00
11	pbkdf2_sha256$20000$UylxfKsi1rTe$3EOu2SZ7Zi/krHv/jLnYi3bLj93ZtPCXFFbu2LXxm2g=	2015-09-01 06:55:34.554532+00	f	chloe	Biyu	Huang	meimeipossible@hotmail.com	f	t	2015-09-01 06:23:45.401769+00
15	pbkdf2_sha256$20000$DY9EvmGm5G0Y$xQ7bWoo1gy4YUkcbMZd2JItnVmDxkH7x2V6d+7V8wh0=	2015-09-01 07:02:54.201826+00	f	lordoftherings	Daryl	Chin	darylchin769@gmail.com	f	t	2015-09-01 07:02:54.063383+00
14	pbkdf2_sha256$20000$hxwyyqkSgCq9$KkevwQm87i657IaxpHyEc6+qLo9Trx+Fnn+XIFyucrs=	2015-09-01 07:26:12.355635+00	f	chris	christopher	chua	christophercck12@gmail.com	f	t	2015-09-01 07:02:10.550539+00
1	pbkdf2_sha256$20000$XgU6tsRmQGc4$EqmD3Xaum2bsrGIkV9SYqAXLqVXRZGBouFC0AJO8LF0=	2015-09-01 15:49:56.041528+00	t	theseabilities			christabella.irwanto@gmail.com	t	t	2015-08-19 07:57:01.430112+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: super
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('auth_user_id_seq', 15, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: super
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: conf_setting; Type: TABLE DATA; Schema: public; Owner: super
--

COPY conf_setting (id, name, value, site_id) FROM stdin;
\.


--
-- Name: conf_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('conf_setting_id_seq', 1, false);


--
-- Data for Name: core_sitepermission; Type: TABLE DATA; Schema: public; Owner: super
--

COPY core_sitepermission (id, user_id) FROM stdin;
\.


--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('core_sitepermission_id_seq', 1, false);


--
-- Data for Name: core_sitepermission_sites; Type: TABLE DATA; Schema: public; Owner: super
--

COPY core_sitepermission_sites (id, sitepermission_id, site_id) FROM stdin;
\.


--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('core_sitepermission_sites_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: super
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2015-08-19 08:15:41.914887+00	1	Mount for tablet/phone for wheelchair users	2	Changed status.	8	1
2	2015-08-20 04:22:08.196955+00	1	Mount for tablet/phone for wheelchair users	2	Changed status.	8	1
3	2015-08-21 06:36:42.578192+00	1	deaf	1		13	1
4	2015-08-21 06:37:06.213804+00	2	physical	1		13	1
5	2015-08-21 06:37:12.241006+00	1	hearing	2	Changed title and slug.	13	1
6	2015-08-21 06:37:46.841511+00	1	hearing	1		2	1
7	2015-08-21 07:28:16.334877+00	4	Wheelchair gets stuck in MRT gap [physical]	2	Changed title.	8	1
8	2015-08-21 07:28:16.369021+00	3	Keyguard for typing on keyboard [physical]	2	Changed title.	8	1
9	2015-08-21 07:28:16.390191+00	2	Joystick on wheelchair is hard to use [physical]	2	Changed title.	8	1
10	2015-08-21 07:28:16.40895+00	1	Mount for tablet/phone for wheelchair users [physical]	2	Changed title.	8	1
11	2015-08-21 08:45:45.433292+00	6	[For Parents] Do not know when baby is crying [hearing]	2	Changed title.	8	1
12	2015-08-31 05:27:21.393827+00	3	visual	1		13	1
13	2015-08-31 06:34:27.650894+00	5	gohtalang	2	Changed password.	3	1
14	2015-09-01 07:25:48.473204+00	14	chris	2	Changed password.	3	1
15	2015-09-02 08:51:23.993212+00	16	Working in Cafe	2	Changed title.	8	1
16	2015-09-02 08:51:24.073679+00	14	Ticket machine in MRT are not accessible for [visual]ly impaired.	2	Changed title.	8	1
17	2015-09-02 08:51:24.141434+00	12	Difficulty knowing whether destination has reached or not [visual]	2	Changed title.	8	1
18	2015-09-02 08:51:24.226502+00	10	I cannot stand to long inside the MRT [physical]	2	Changed title.	8	1
19	2015-09-02 08:51:24.301024+00	8	Using keyboard is difficult for one-handed person [physical]	2	Changed title.	8	1
20	2015-09-02 08:51:37.924524+00	14	Ticket machine in MRT are not accessible for visually impaired. [visual]	2	Changed title.	8	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 20, true);


--
-- Data for Name: django_comment_flags; Type: TABLE DATA; Schema: public; Owner: super
--

COPY django_comment_flags (id, flag, flag_date, comment_id, user_id) FROM stdin;
\.


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('django_comment_flags_id_seq', 1, false);


--
-- Data for Name: django_comments; Type: TABLE DATA; Schema: public; Owner: super
--

COPY django_comments (id, object_pk, user_name, user_email, user_url, comment, submit_date, ip_address, is_public, is_removed, content_type_id, site_id, user_id) FROM stdin;
1	4	theseabilities	christabella.irwanto@gmail.com		test	2015-08-21 06:35:09.500346+00	202.94.70.51	t	f	8	1	1
2	5	Ken Chua	kenchuat@gmail.com		I know there are several solutions from germany and usa. How much are they? and is it worth the price?	2015-08-21 09:06:11.675735+00	103.24.77.25	t	f	8	1	1
3	9	Adeline Ranjan	adelinedivyaranjan@gmail.com		when i stressfull crowds	2015-09-01 03:01:38.506426+00	119.75.18.242	t	f	8	1	7
6	10	christopher chua	christophercck12@gmail.com		true sometimes i also can't stand too long in the MRT only for a short while then i must sit .	2015-09-01 07:12:52.044274+00	119.75.18.242	t	f	8	1	14
7	8	christopher chua	christophercck12@gmail.com		true sometimes i'ts hard for me also because the keys are on the right side.	2015-09-01 07:15:52.320936+00	119.75.18.242	t	f	8	1	14
5	13	christopher chua	christophercck12@gmail.com		Sometimes pretend not to see us and continue seating until they have reached the station that they are alighting at.	2015-09-01 07:09:56.717753+00	119.75.18.242	t	f	8	1	14
8	16	christopher chua	christophercck12@gmail.com		Aiyah cafe life is like that one lah sometimes people scold you you just have to grind and bear it. JUST KEEP ON SMILING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!	2015-09-01 07:27:29.245018+00	119.75.18.242	t	f	8	1	14
4	15	Biyu Huang	meimeipossible@hotmail.com		Sometimes people think you are a normal girl but they just walk past and knock on you and never apologize and scold you, sometimes for no reason.	2015-09-01 06:28:30.309423+00	119.75.18.242	t	f	8	1	11
\.


--
-- Name: django_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('django_comments_id_seq', 8, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: super
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	auth	user
4	contenttypes	contenttype
5	redirects	redirect
6	sessions	session
7	sites	site
8	links	link
9	links	profile
10	conf	setting
11	core	sitepermission
12	generic	threadedcomment
13	generic	keyword
14	generic	assignedkeyword
15	generic	rating
16	admin	logentry
17	django_comments	comment
18	django_comments	commentflag
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('django_content_type_id_seq', 18, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: super
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-08-19 07:55:17.087973+00
2	auth	0001_initial	2015-08-19 07:55:17.346018+00
3	admin	0001_initial	2015-08-19 07:55:17.422487+00
4	contenttypes	0002_remove_content_type_name	2015-08-19 07:55:17.504077+00
5	auth	0002_alter_permission_name_max_length	2015-08-19 07:55:17.545982+00
6	auth	0003_alter_user_email_max_length	2015-08-19 07:55:17.589425+00
7	auth	0004_alter_user_username_opts	2015-08-19 07:55:17.626481+00
8	auth	0005_alter_user_last_login_null	2015-08-19 07:55:17.668272+00
9	auth	0006_require_contenttypes_0002	2015-08-19 07:55:17.68727+00
10	sites	0001_initial	2015-08-19 07:55:17.752494+00
11	conf	0001_initial	2015-08-19 07:55:17.874225+00
12	core	0001_initial	2015-08-19 07:55:17.985172+00
13	core	0002_auto_20150414_2140	2015-08-19 07:55:18.040326+00
14	django_comments	0001_initial	2015-08-19 07:55:18.254123+00
15	django_comments	0002_update_user_email_field_length	2015-08-19 07:55:18.292519+00
16	generic	0001_initial	2015-08-19 07:55:18.656367+00
17	generic	0002_auto_20141227_0224	2015-08-19 07:55:18.707513+00
18	links	0001_initial	2015-08-19 07:55:18.94132+00
19	redirects	0001_initial	2015-08-19 07:55:19.08066+00
20	sessions	0001_initial	2015-08-19 07:55:19.194779+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('django_migrations_id_seq', 20, true);


--
-- Data for Name: django_redirect; Type: TABLE DATA; Schema: public; Owner: super
--

COPY django_redirect (id, site_id, old_path, new_path) FROM stdin;
\.


--
-- Name: django_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('django_redirect_id_seq', 1, false);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: super
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
rqqser0sibe97b3tiw3phbqgxrvqkiaw	NjI5ZjVkMDc1YjJhNGRhZmM3NzcwZTUwOTk0MTdiNDQxOTdiZTRiZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNjYTgzNDg5YzBmNmUzNTk3YTFjMDA0ZWJjMDI0OGNlN2FlMjRhYmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9	2015-09-02 08:00:54.190341+00
bebwd2gughstyq8s8m0p5tayfxc473me	YmY2ZGQ0ZDdlYmRiMjY0NzNjNWZlYWNhZDZmNjMyYjAxNzUzNTIyNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjNjYTgzNDg5YzBmNmUzNTk3YTFjMDA0ZWJjMDI0OGNlN2FlMjRhYmQiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6Im1lenphbmluZS5jb3JlLmF1dGhfYmFja2VuZHMuTWV6emFuaW5lQmFja2VuZCJ9	2015-09-06 09:37:51.837787+00
7vlnweecbx4gehks42u7mjslz082fijb	MzY2MGM5YWVkNzJlMzQwMTVhN2NmOTNmZTdmNmYzNTIyOWRiNTM3ZDp7InVuYXV0aGVudGljYXRlZF9yYXRpbmciOnsicmVmZXJyZXIiOiJodHRwOi8vdGhlc2VhYmlsaXRpZXMucHl0aG9uYW55d2hlcmUuY29tLyIsIm9iamVjdF9wayI6IjUiLCJ2YWx1ZSI6IjEiLCJzZWN1cml0eV9oYXNoIjoiNDZiZGRiZjE0Yzg5NGE4YzlkMmQzZjVlNTY1ODc4Y2FjZTI5MjNhOSIsImNvbnRlbnRfdHlwZSI6ImxpbmtzLmxpbmsiLCJ0aW1lc3RhbXAiOiIxNDQwMzg1OTI2IiwiY3NyZm1pZGRsZXdhcmV0b2tlbiI6Im5EUUdLdkxOTThjRmlRUUg2T3pKc1JibHVoME5RUzY5In19	2015-09-07 07:36:49.547741+00
u5mitmre079pe1ajlgyx1rn18297rz41	Njk4ZWE4YWJmODAxOTIwYzJjMDE5YzlmN2MxYmE1MjExOGJiYWMyMTp7InVuYXV0aGVudGljYXRlZF9yYXRpbmciOnsicmVmZXJyZXIiOiJodHRwOi8vdGhlc2VhYmlsaXRpZXMucHl0aG9uYW55d2hlcmUuY29tL2xpbmsvd2hlZWxjaGFpci1nZXRzLXN0dWNrLWluLW1ydC1nYXAvIiwib2JqZWN0X3BrIjoiNSIsInZhbHVlIjoiMSIsInNlY3VyaXR5X2hhc2giOiIxMjA5ZDc0MTUyNjEyMDEzYjJhOWQwZWM0NTRkZjQ4NzIzOTYxN2RkIiwiY29udGVudF90eXBlIjoibGlua3MubGluayIsInRpbWVzdGFtcCI6IjE0NDA0MDkzNDUiLCJjc3JmbWlkZGxld2FyZXRva2VuIjoiemhYMnUyQWxNSlQwUFdibUc1Tm5xQ21oR29NMVZjVkQifX0=	2015-09-07 09:42:29.770652+00
f5soni51fa5r5l7p90d7sqsevn5yp7a1	NDQ1YTU3ODQ2OTJhMzgyNTMyZTYwOWE1ZTI2ZWI3YWFlNDk2ZTczODp7Il9hdXRoX3VzZXJfaGFzaCI6IjRjYThlYmQwNDZjNTg3YmEyOGNjYjZiOTBjNzI3MjExODI1YzczYmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMyIsInVuYXV0aGVudGljYXRlZF9jb21tZW50Ijp7ImNvbW1lbnQiOiItIiwibmFtZSI6IkJlbGxhIiwidXJsIjoiIiwicmVmZXJyZXIiOiJodHRwOi8vdm9pY2VzLnRoZXNlYWJpbGl0aWVzLmNvbS8iLCJvYmplY3RfcGsiOiI1IiwiZW1haWwiOiJjaHJpc3RhYkBtaXQuZWR1Iiwic2VjdXJpdHlfaGFzaCI6ImM4MTYzY2UyNTE0MjZkMDkzNjM3MzUyYjZiNTQ2M2M5YWQyZjUxYTciLCJjb250ZW50X3R5cGUiOiJsaW5rcy5saW5rIiwidGltZXN0YW1wIjoiMTQ0MDc0NzMwNyIsImhvbmV5cG90IjoiIiwiY3NyZm1pZGRsZXdhcmV0b2tlbiI6Ik9TSW43SzZ2THhqNmZnWmN6Q21vSVdlNTBHUFM0dUY3In19	2015-09-11 07:36:37.631587+00
i4zpbrak34239w6jv5vjm93rrbf75aqu	Yjg0OGM5NjQ1OWM0MTg0MzY2NjUzNTYwNWE5NTkyNTdhMGI4NGRhMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImVlMjMyYWE1NzkyOWRiYjdkM2YzZGM2M2NhZGQ5YzMyNGM3NWFiMTEiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6Im1lenphbmluZS5jb3JlLmF1dGhfYmFja2VuZHMuTWV6emFuaW5lQmFja2VuZCJ9	2015-09-12 03:45:41.097826+00
x9z23aow217artl11xxtcx2804mkrvwt	MzIwZWM3ZjRmNTRmZjZiZGFjMzFhMTc2MzhkNTRkNzc1M2E2YzY1YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImExMjk2ZmFkYjhhZTNmMTdmODgzOGJkY2UzYWM2ZjE2N2FmNzZmMTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiNSJ9	2015-09-12 04:15:49.864256+00
xr0wm2yom3dbv8hzcrlcdowu4jeifhx3	NzZlZTM2NTZlMDI5OWZiNTE5ZWJhZWIyOGFiYTQ2M2ZiY2FhZDA3Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjYxNDRiZDYwZmQ4NzUwMzE5MWFkYjhiNGU2MWFhZDhmY2RjN2M4ZDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiNyJ9	2015-09-15 02:36:55.54019+00
7xd4l95cdl1yxegnim0v0095rbydmil4	ZmM4MDIyZWNlMzgyYmU0NGVlOTc1Mzc2YTc3YTg4ZTc3MmZlZTg0MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMyZmI1OTUzNDc4ODI5OWQ0YmE3ZDRlNTljNmU4YjQ4M2MxZWVlNjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiOCJ9	2015-09-15 02:43:28.315369+00
hyolhbgjfri4up9yefmwjorb7oistqmg	MDQ5MmFmYzFhNGM5ODQyNjdiZWZiN2Y5NjhkZGFjNWJjZDM0MzE5MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjYwZDgyYmVmNTI4OTRlNTZkZGM1ZjY4NzlkNzZhOGFjYjcxYzJhODciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiOSJ9	2015-09-15 03:17:02.305994+00
3b10yx2mj5jwkb6r11nn9aj576od5l9n	OTYyYWVmNTIxY2ZkMGY4N2UwOGQ1MzY1NmY0MTliYTY2MTg1ZjM2NTp7Il9hdXRoX3VzZXJfaGFzaCI6ImM4OThiZDBkN2U3NTM5MTQ1YmRkZWE4ZDBiYTFlMDUxZDlmMTJkZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMTAifQ==	2015-09-15 04:48:59.133427+00
yeu1xs1lia052lmvqop6subl5l0t4vsn	Nzc1MTQxYzEwMTgzYjFmMTI1ZWI1MzhmOWYyZWE3OTljM2UzMDk4OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVlMjMyYWE1NzkyOWRiYjdkM2YzZGM2M2NhZGQ5YzMyNGM3NWFiMTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiNCJ9	2015-09-15 06:11:28.804457+00
bzuo0nyx1h75b9ct7ju7e4phy9vvdk8z	MGI3YWIzY2U0MTQwZTI1NDlhZmVhMDIzNTI5NzA5YjJlYjZiOGQyMjp7InVuYXV0aGVudGljYXRlZF9yYXRpbmciOnsicmVmZXJyZXIiOiJodHRwOi8vd3d3LnRoZXNlYWJpbGl0aWVzLmNvbS8iLCJvYmplY3RfcGsiOiIxNSIsInZhbHVlIjoiMSIsInNlY3VyaXR5X2hhc2giOiI1ZGZiMmZlZDQzYzFkMzM5NTUyYmE4YzljYWFjZDllNmY0ZTIzMjJkIiwiY29udGVudF90eXBlIjoibGlua3MubGluayIsInRpbWVzdGFtcCI6IjE0NDEwOTI1ODYiLCJjc3JmbWlkZGxld2FyZXRva2VuIjoiUG1hcGxIUDA5ZDF5YVg1NzkySm42b2lUWTdTa3UxQ0cifX0=	2015-09-15 07:30:06.407953+00
rnc7nt3p9jvfkigli3s4rpo6cz0pp1uz	NjI5ZjVkMDc1YjJhNGRhZmM3NzcwZTUwOTk0MTdiNDQxOTdiZTRiZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNjYTgzNDg5YzBmNmUzNTk3YTFjMDA0ZWJjMDI0OGNlN2FlMjRhYmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9	2015-09-15 15:49:56.047952+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: super
--

COPY django_site (id, domain, name) FROM stdin;
1	voices.theseabilities.com	Default
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: generic_assignedkeyword; Type: TABLE DATA; Schema: public; Owner: super
--

COPY generic_assignedkeyword (id, _order, object_pk, content_type_id, keyword_id) FROM stdin;
1	0	4	8	2
2	0	3	8	2
3	0	2	8	2
4	0	1	8	2
5	0	5	8	1
6	0	6	8	1
7	0	7	8	1
8	0	11	8	3
9	0	15	8	3
10	0	12	8	3
11	0	10	8	2
12	0	8	8	2
13	0	14	8	3
\.


--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('generic_assignedkeyword_id_seq', 13, true);


--
-- Data for Name: generic_keyword; Type: TABLE DATA; Schema: public; Owner: super
--

COPY generic_keyword (id, title, slug, site_id) FROM stdin;
2	physical	physical	1
1	hearing	hearing	1
3	visual	visual	1
\.


--
-- Name: generic_keyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('generic_keyword_id_seq', 3, true);


--
-- Data for Name: generic_rating; Type: TABLE DATA; Schema: public; Owner: super
--

COPY generic_rating (id, value, rating_date, object_pk, content_type_id, user_id) FROM stdin;
1	1	2015-08-19 08:01:18.871891+00	1	8	1
2	1	2015-08-21 06:35:48.325336+00	2	8	1
3	1	2015-08-21 09:05:26.726455+00	5	8	1
4	1	2015-08-23 09:37:51.809312+00	4	8	1
5	1	2015-08-23 09:37:56.522099+00	7	8	1
8	-1	2015-09-01 02:39:57.372303+00	5	8	7
9	1	2015-09-01 02:40:01.933013+00	4	8	7
10	1	2015-09-01 02:43:43.242626+00	3	8	7
13	1	2015-09-01 02:44:20.652593+00	4	8	6
12	1	2015-09-01 02:43:52.845306+00	8	8	6
11	-1	2015-09-01 02:43:50.667993+00	3	8	6
14	1	2015-09-01 02:52:56.54122+00	9	8	7
15	1	2015-09-01 02:53:43.039255+00	10	8	8
16	1	2015-09-01 03:02:02.826852+00	1	8	7
17	1	2015-09-01 03:25:25.996704+00	11	8	9
18	1	2015-09-01 03:37:14.809172+00	13	8	9
19	1	2015-09-01 05:04:00.974259+00	14	8	10
20	1	2015-09-01 05:23:12.543206+00	15	8	10
21	1	2015-09-01 06:12:09.029013+00	2	8	4
23	1	2015-09-01 06:27:10.781187+00	15	8	11
24	1	2015-09-01 06:28:55.593157+00	4	12	11
22	1	2015-09-01 06:26:27.591742+00	14	8	11
25	1	2015-09-01 06:48:43.61246+00	15	8	12
26	1	2015-09-01 07:08:46.240803+00	14	8	15
27	1	2015-09-01 07:10:43.700359+00	15	8	15
28	1	2015-09-01 07:16:53.066121+00	8	8	14
29	1	2015-09-01 07:17:14.022607+00	13	8	14
30	1	2015-09-01 07:17:27.225031+00	5	12	14
31	1	2015-09-02 09:06:33.443068+00	4	12	1
32	1	2015-09-02 11:09:21.143131+00	12	8	1
\.


--
-- Name: generic_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('generic_rating_id_seq', 32, true);


--
-- Data for Name: generic_threadedcomment; Type: TABLE DATA; Schema: public; Owner: super
--

COPY generic_threadedcomment (comment_ptr_id, rating_count, rating_sum, rating_average, by_author, replied_to_id) FROM stdin;
1	0	0	0	t	\N
2	0	0	0	t	\N
3	0	0	0	t	\N
6	0	0	0	f	\N
7	0	0	0	f	\N
5	1	1	1	f	\N
8	0	0	0	f	\N
4	2	2	1	f	\N
\.


--
-- Data for Name: links_link; Type: TABLE DATA; Schema: public; Owner: super
--

COPY links_link (id, comments_count, keywords_string, rating_count, rating_sum, rating_average, title, slug, _meta_title, description, gen_description, created, updated, status, publish_date, expiry_date, short_url, in_sitemap, link, site_id, user_id) FROM stdin;
11	0	visual	1	1	1	Cannot see bus numbers [visual]	cannot-see-bus-numbers-visual	\N	Because of my low vision, I can't see the bus numbers. Normally, I'll have to seek help from passengers at the bus-stop.\r\nSometimes, I will face rejections from people.	f	2015-09-01 03:24:48.288321+00	2015-09-01 03:25:26.007505+00	2	2015-09-01 03:24:48.281717+00	\N	\N	t		1	9
14	0	visual	3	3	1	Ticket machine in MRT are not accessible for visually impaired. [visual]	ticket-machine-in-mrt-are-not-accessible-for-visually-impaired	\N	Ever wonder if your ezlink has insufficient amount, you have to buy a ticket if you don't have the cash to top up.\r\nThe problem with the ticket machine is that the wording and the icon is too small. What I meant is that the screen actually shows a map of Singapore with coloured Mrt lines. The thing is, it is too small for us to read plus if we stand there trying too squint our eyes to see, the other people who is queuing behind us starts to complain. 	f	2015-09-01 05:03:35.969846+00	2015-09-02 08:51:37.913366+00	2	2015-09-01 05:03:35.955007+00	\N	\N	t		1	10
4	1	physical	3	3	1	Wheelchair gets stuck in MRT gap [physical]	wheelchair-gets-stuck-in-mrt-gap	\N	-	f	2015-08-21 01:34:02.832165+00	2015-09-01 02:44:20.658104+00	2	2015-08-21 01:34:02.8274+00	\N	\N	t		1	1
15	1	visual	4	4	1	Hard To Navigate In Crowded Places [visual]	hard-to-navigate-in-crowded-places-visual	\N	Its hard people like us to walk in crowded places as we tend bump or get bumped by other people. Example, its when I'm walking when suddenly people in front of me stop, I'm surely to bump into them. I can see two things at one time as I have to see where I step if not I will fall down. Another ting is when someone cut from the side (can't see from the side view) or the back and also when someone messaging on their hand phone while walking.	f	2015-09-01 05:23:00.908863+00	2015-09-02 09:06:33.458425+00	2	2015-09-01 05:23:00.89509+00	\N	\N	t		1	10
3	0	physical	2	0	0	Keyguard for typing on keyboard [physical]	keyguard-for-typing-on-keyboard	\N	-\r\n	f	2015-08-21 01:33:41.378302+00	2015-09-01 02:46:11.599078+00	2	2015-08-21 01:33:41.374357+00	\N	\N	t		1	1
16	1		0	0	0	Working in Cafe	cafe	\N	When I Was working in a café I use 2 bump in 2 people ,sometimes they will scold me, and when I standing 4 a long time my leg is painful.	f	2015-09-01 07:17:34.929552+00	2015-09-02 08:51:23.941991+00	2	2015-09-01 07:17:34.925625+00	\N	\N	t		1	15
12	0	visual	1	1	1	Difficulty knowing whether destination has reached or not [visual]	difficulty-knowing-whether-destination-has-reached-or-not	\N	When I travel in the early morning or evening when the sky is dark, I face difficulty knowing whether my destination has reached or not.	f	2015-09-01 03:31:45.550173+00	2015-09-02 11:09:21.157853+00	2	2015-09-01 03:31:45.546181+00	\N	\N	t		1	9
6	0	hearing	0	0	0	[For Parents] Do not know when baby is crying [hearing]	for-parents-do-not-know-when-baby-is-crying	\N	Do not know when baby is crying	f	2015-08-21 08:44:02.891296+00	2015-08-21 08:45:45.429931+00	2	2015-08-21 08:44:02.887475+00	\N	\N	t		1	1
9	1		1	1	1	l cannot stand to long in staion to get tired 	l-cannot-stand-to-long-in-staion-to-get-tired	\N	l cannot stand to long in staion to get tired  	f	2015-09-01 02:52:35.625086+00	2015-09-01 03:01:38.532871+00	2	2015-09-01 02:52:35.621064+00	\N	\N	t		1	7
1	0	physical	2	2	1	Mount for tablet/phone for wheelchair users [physical]	mount-for-tabletphone-for-wheelchair-users	\N	-	f	2015-08-19 08:01:12.215479+00	2015-09-01 03:02:02.832875+00	2	2015-08-19 08:01:12.211582+00	\N	\N	t		1	1
7	0	hearing	1	1	1	Not a lot of people know sign language [hearing]	not-a-lot-of-people-know-sign-language-hearing	\N	Not a lot of people know sign language. Hard to communicate in public when ordering "teh O poh siu dai". Anyone has a solution for this?	f	2015-08-21 09:04:11.456451+00	2015-08-23 09:37:56.5336+00	2	2015-08-21 09:04:11.452519+00	\N	\N	t		1	1
10	1	physical	1	1	1	I cannot stand to long inside the MRT [physical]	i-cannot-stand-to-long-inside-the-mrt	\N	I cannot stand to long inside the MRT, my left leg will get very pain fall	f	2015-09-01 02:53:21.167692+00	2015-09-02 08:51:24.221335+00	2	2015-09-01 02:53:21.161215+00	\N	\N	t		1	8
2	0	physical	2	2	1	Joystick on wheelchair is hard to use [physical]	joystick-on-wheelchair-is-hard-to-use	\N	-	f	2015-08-21 01:33:28.909704+00	2015-09-01 06:12:09.033061+00	2	2015-08-21 01:33:28.90149+00	\N	\N	t		1	1
5	1	hearing	2	0	0	Cannot hear doorbell ring [hearing]	cannot-hear-doorbell-ring-hearing	\N	-	f	2015-08-21 07:29:30.26356+00	2015-09-01 02:39:57.376818+00	2	2015-08-21 07:29:30.259154+00	\N	\N	t		1	1
13	1		2	2	1	People don't give up seats for us 	people-dont-give-up-seats-for-us	\N	In bus & MRT, sometimes, people will not give up their seats for us. 	f	2015-09-01 03:36:36.74119+00	2015-09-01 07:17:27.237634+00	2	2015-09-01 03:36:36.726727+00	\N	\N	t		1	9
8	1	physical	2	2	1	Using keyboard is difficult for one-handed person [physical]	using-keyboard-is-difficult-for-one-handed-person	\N	When using only left hand for typing, it is difficult especially because important keys (Enter, Backspace, Number Pad) are all on the right side of the keyboard.\r\n\r\nBackground:\r\nDue to a stroke, I cannot use my right hand and right eye.	f	2015-09-01 02:43:15.531497+00	2015-09-02 08:51:24.287894+00	2	2015-09-01 02:43:15.525703+00	\N	\N	t		1	6
\.


--
-- Name: links_link_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('links_link_id_seq', 16, true);


--
-- Data for Name: links_profile; Type: TABLE DATA; Schema: public; Owner: super
--

COPY links_profile (id, website, bio, karma, user_id) FROM stdin;
2			0	2
3			0	3
4			0	4
5			0	5
7		Iamhappymyshafe	0	7
8		I`m Zhafri, I`m Manchester United fans I also like to play soccer game at my PS4...	0	8
1			3	1
12			0	12
13	http://www.hotmail.com	Job company to strict for difficult work.	0	13
14			0	14
15			0	15
10			5	10
6			1	6
11		I'm a girl and very lonely.	1	11
9			2	9
\.


--
-- Name: links_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: super
--

SELECT pg_catalog.setval('links_profile_id_seq', 15, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: conf_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY conf_setting
    ADD CONSTRAINT conf_setting_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_sites_sitepermission_id_site_id_key; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_sitepermission_id_site_id_key UNIQUE (sitepermission_id, site_id);


--
-- Name: core_sitepermission_user_id_key; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_user_id_c7a132a641f11c1_uniq; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_c7a132a641f11c1_uniq UNIQUE (user_id, comment_id, flag);


--
-- Name: django_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_pkey PRIMARY KEY (id);


--
-- Name: django_redirect_site_id_old_path_key; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_site_id_old_path_key UNIQUE (site_id, old_path);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: generic_assignedkeyword_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyword_pkey PRIMARY KEY (id);


--
-- Name: generic_keyword_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY generic_keyword
    ADD CONSTRAINT generic_keyword_pkey PRIMARY KEY (id);


--
-- Name: generic_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rating_pkey PRIMARY KEY (id);


--
-- Name: generic_threadedcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT generic_threadedcomment_pkey PRIMARY KEY (comment_ptr_id);


--
-- Name: links_link_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY links_link
    ADD CONSTRAINT links_link_pkey PRIMARY KEY (id);


--
-- Name: links_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY links_profile
    ADD CONSTRAINT links_profile_pkey PRIMARY KEY (id);


--
-- Name: links_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: super; Tablespace: 
--

ALTER TABLE ONLY links_profile
    ADD CONSTRAINT links_profile_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: conf_setting_9365d6e7; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX conf_setting_9365d6e7 ON conf_setting USING btree (site_id);


--
-- Name: core_sitepermission_sites_9365d6e7; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX core_sitepermission_sites_9365d6e7 ON core_sitepermission_sites USING btree (site_id);


--
-- Name: core_sitepermission_sites_f6687ce4; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX core_sitepermission_sites_f6687ce4 ON core_sitepermission_sites USING btree (sitepermission_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_comment_flags_327a6c43; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_comment_flags_327a6c43 ON django_comment_flags USING btree (flag);


--
-- Name: django_comment_flags_69b97d17; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_comment_flags_69b97d17 ON django_comment_flags USING btree (comment_id);


--
-- Name: django_comment_flags_e8701ad4; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_comment_flags_e8701ad4 ON django_comment_flags USING btree (user_id);


--
-- Name: django_comment_flags_flag_686b7398bb858e56_like; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_comment_flags_flag_686b7398bb858e56_like ON django_comment_flags USING btree (flag varchar_pattern_ops);


--
-- Name: django_comments_417f1b1c; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_comments_417f1b1c ON django_comments USING btree (content_type_id);


--
-- Name: django_comments_9365d6e7; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_comments_9365d6e7 ON django_comments USING btree (site_id);


--
-- Name: django_comments_e8701ad4; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_comments_e8701ad4 ON django_comments USING btree (user_id);


--
-- Name: django_redirect_91a0b591; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_redirect_91a0b591 ON django_redirect USING btree (old_path);


--
-- Name: django_redirect_9365d6e7; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_redirect_9365d6e7 ON django_redirect USING btree (site_id);


--
-- Name: django_redirect_old_path_9db3e423470cdaf_like; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_redirect_old_path_9db3e423470cdaf_like ON django_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: generic_assignedkeyword_417f1b1c; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX generic_assignedkeyword_417f1b1c ON generic_assignedkeyword USING btree (content_type_id);


--
-- Name: generic_assignedkeyword_5c003bba; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX generic_assignedkeyword_5c003bba ON generic_assignedkeyword USING btree (keyword_id);


--
-- Name: generic_keyword_9365d6e7; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX generic_keyword_9365d6e7 ON generic_keyword USING btree (site_id);


--
-- Name: generic_rating_417f1b1c; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX generic_rating_417f1b1c ON generic_rating USING btree (content_type_id);


--
-- Name: generic_rating_e8701ad4; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX generic_rating_e8701ad4 ON generic_rating USING btree (user_id);


--
-- Name: generic_threadedcomment_21ce1e68; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX generic_threadedcomment_21ce1e68 ON generic_threadedcomment USING btree (replied_to_id);


--
-- Name: links_link_76776489; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX links_link_76776489 ON links_link USING btree (publish_date);


--
-- Name: links_link_9365d6e7; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX links_link_9365d6e7 ON links_link USING btree (site_id);


--
-- Name: links_link_e8701ad4; Type: INDEX; Schema: public; Owner: super; Tablespace: 
--

CREATE INDEX links_link_e8701ad4 ON links_link USING btree (user_id);


--
-- Name: D8e54ed6535e17a5f07b3f5887fe55ff; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT "D8e54ed6535e17a5f07b3f5887fe55ff" FOREIGN KEY (replied_to_id) REFERENCES generic_threadedcomment(comment_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: co_sitepermission_id_64c924a870a6a554_fk_core_sitepermission_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT co_sitepermission_id_64c924a870a6a554_fk_core_sitepermission_id FOREIGN KEY (sitepermission_id) REFERENCES core_sitepermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: conf_setting_site_id_3971204fedfdfec8_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY conf_setting
    ADD CONSTRAINT conf_setting_site_id_3971204fedfdfec8_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission__site_id_6dd5fffb45435677_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission__site_id_6dd5fffb45435677_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission_user_id_d964e296aed9970_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_d964e296aed9970_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_39798e235626a505_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT djan_content_type_id_39798e235626a505_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_comment_id_26f904a7f2b4c55_fk_django_comments_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_comment_id_26f904a7f2b4c55_fk_django_comments_id FOREIGN KEY (comment_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_user_id_1442753a03512f4c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_1442753a03512f4c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_site_id_48b7896f6ea83216_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_site_id_48b7896f6ea83216_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_user_id_20e3794dfd3a7b1e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_user_id_20e3794dfd3a7b1e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_redirect_site_id_121a4403f653e524_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_site_id_121a4403f653e524_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gene_content_type_id_28e2096071be2a4f_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT gene_content_type_id_28e2096071be2a4f_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gene_content_type_id_340baca94a5341cc_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT gene_content_type_id_340baca94a5341cc_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_assig_keyword_id_61d6fae39a09e150_fk_generic_keyword_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assig_keyword_id_61d6fae39a09e150_fk_generic_keyword_id FOREIGN KEY (keyword_id) REFERENCES generic_keyword(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_keyword_site_id_7727e5473a304097_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY generic_keyword
    ADD CONSTRAINT generic_keyword_site_id_7727e5473a304097_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_rating_user_id_323dfdffa0c13bac_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rating_user_id_323dfdffa0c13bac_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_t_comment_ptr_id_7ce6b4612f86bbc6_fk_django_comments_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT generic_t_comment_ptr_id_7ce6b4612f86bbc6_fk_django_comments_id FOREIGN KEY (comment_ptr_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: links_link_site_id_75d9ced74005bbd_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY links_link
    ADD CONSTRAINT links_link_site_id_75d9ced74005bbd_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: links_link_user_id_2ac01084f35ff3b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY links_link
    ADD CONSTRAINT links_link_user_id_2ac01084f35ff3b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: links_profile_user_id_76006f50f8e2db81_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: super
--

ALTER TABLE ONLY links_profile
    ADD CONSTRAINT links_profile_user_id_76006f50f8e2db81_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

