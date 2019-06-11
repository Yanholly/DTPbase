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

ALTER TABLE ONLY public.ts DROP CONSTRAINT ts_tn_tn_id_fk;
ALTER TABLE ONLY public.ts DROP CONSTRAINT ts_rrul_rrul_id_fk;
ALTER TABLE ONLY public.ts DROP CONSTRAINT ts_opf_opf_id_fk;
ALTER TABLE ONLY public.dtp_weather DROP CONSTRAINT dtp_weather_weather_weather_id_fk;
ALTER TABLE ONLY public.dtp_weather DROP CONSTRAINT dtp_weather_dtp_dtp_id_fk;
ALTER TABLE ONLY public.dtp DROP CONSTRAINT dtp_spch_spch_id_fk;
ALTER TABLE ONLY public.dtp_sdor DROP CONSTRAINT dtp_sdor_sdor_sdor_id_fk;
ALTER TABLE ONLY public.dtp_sdor DROP CONSTRAINT dtp_sdor_dtp_dtp_id_fk;
ALTER TABLE ONLY public.dtp DROP CONSTRAINT dtp_osv_osv_id_fk;
ALTER TABLE ONLY public.dtp_objdtp DROP CONSTRAINT dtp_objdtp_objdtp_objdtp_id_fk;
ALTER TABLE ONLY public.dtp_objdtp DROP CONSTRAINT dtp_objdtp_dtp_dtp_id_fk;
ALTER TABLE ONLY public.dtp_ndu DROP CONSTRAINT dtp_ndu_ndu_ndu_id_fk;
ALTER TABLE ONLY public.dtp_ndu DROP CONSTRAINT dtp_ndu_dtp_dtp_id_fk;
ALTER TABLE ONLY public.dtp DROP CONSTRAINT dtp_kul_kul_id_fk;
ALTER TABLE ONLY public.dtp_factor DROP CONSTRAINT dtp_factor_factors_factor_id_fk;
ALTER TABLE ONLY public.dtp_factor DROP CONSTRAINT dtp_factor_dtp_dtp_id_fk;
ALTER TABLE ONLY public.dtp DROP CONSTRAINT dtp_dtptypes_type_id_fk;
ALTER TABLE ONLY public.dtp_driver DROP CONSTRAINT dtp_driver_dtp_dtp_id_fk;
ALTER TABLE ONLY public.dtp_driver DROP CONSTRAINT dtp_driver_driver_driver_id_fk;
ALTER TABLE ONLY public.dtp DROP CONSTRAINT dtp_dorz_dorz_id_fk;
ALTER TABLE ONLY public.dtp DROP CONSTRAINT dtp_districts_district_id_fk;
ALTER TABLE ONLY public.dtp DROP CONSTRAINT dtp_change_org_motion_motion_id_fk;
ALTER TABLE ONLY public.driver DROP CONSTRAINT driver_ts_ts_id_fk;
ALTER TABLE ONLY public.driver DROP CONSTRAINT driver_ts_s_ts_s_id_fk;
ALTER TABLE ONLY public.driver DROP CONSTRAINT driver_t_ts_t_ts_id_fk;
ALTER TABLE ONLY public.driver DROP CONSTRAINT driver_st_st_id_fk;
ALTER TABLE ONLY public.driver_npdd DROP CONSTRAINT driver_npdd_npdd_npdd_id_fk;
ALTER TABLE ONLY public.driver_npdd DROP CONSTRAINT driver_npdd_driver_driver_id_fk;
ALTER TABLE ONLY public.driver DROP CONSTRAINT driver_kuch_kuch_id_fk;
DROP INDEX public.weather_weather_name_uindex;
DROP INDEX public.weather_weather_id_uindex;
DROP INDEX public.ts_ts_id_uindex;
DROP INDEX public.ts_s_ts_s_name_uindex;
DROP INDEX public.ts_s_ts_s_id_uindex;
DROP INDEX public.tn_tn_name_uindex;
DROP INDEX public.tn_tn_id_uindex;
DROP INDEX public.t_ts_t_ts_name_uindex;
DROP INDEX public.t_ts_t_ts_id_uindex;
DROP INDEX public.st_st_name_uindex;
DROP INDEX public.st_st_id_uindex;
DROP INDEX public.spch_sdor_name_uindex;
DROP INDEX public.spch_sdor_id_uindex;
DROP INDEX public.sdor_sdor_name_uindex;
DROP INDEX public.sdor_sdor_id_uindex;
DROP INDEX public.rrul_rrul_name_uindex;
DROP INDEX public.rrul_rrul_id_uindex;
DROP INDEX public.osv_osv_name_uindex;
DROP INDEX public.osv_osv_id_uindex;
DROP INDEX public.opf_opf_name_uindex;
DROP INDEX public.opf_opf_id_uindex;
DROP INDEX public.objdtp_objdtp_name_uindex;
DROP INDEX public.objdtp_objdtp_id_uindex;
DROP INDEX public.npdd_npdd_name_uindex;
DROP INDEX public.npdd_npdd_id_uindex;
DROP INDEX public.ndu_ndu_name_uindex;
DROP INDEX public.ndu_ndu_id_uindex;
DROP INDEX public.kul_kulname_uindex;
DROP INDEX public.kul_kulid_uindex;
DROP INDEX public.kuch_kuch_name_uindex;
DROP INDEX public.kuch_kuch_id_uindex;
DROP INDEX public.factors_factor_name_uindex;
DROP INDEX public.factors_factor_id_uindex;
DROP INDEX public.dtptypes_type_name_uindex;
DROP INDEX public.dtptypes_type_id_uindex;
DROP INDEX public.dtp_dtp_id_uindex;
DROP INDEX public.driver_driver_id_uindex;
DROP INDEX public.dorz_dorzname_uindex;
DROP INDEX public.dorz_dorzid_uindex;
DROP INDEX public.districts_district_name_uindex;
DROP INDEX public.districts_district_id_uindex;
DROP INDEX public.change_org_motion_motion_name_uindex;
DROP INDEX public.change_org_motion_motion_id_uindex;
ALTER TABLE ONLY public.weather DROP CONSTRAINT weather_pk;
ALTER TABLE ONLY public.ts_s DROP CONSTRAINT ts_s_pk;
ALTER TABLE ONLY public.ts DROP CONSTRAINT ts_pk;
ALTER TABLE ONLY public.tn DROP CONSTRAINT tn_pk;
ALTER TABLE ONLY public.t_ts DROP CONSTRAINT t_ts_pk;
ALTER TABLE ONLY public.st DROP CONSTRAINT st_pk;
ALTER TABLE ONLY public.spch DROP CONSTRAINT spch_pk;
ALTER TABLE ONLY public.sdor DROP CONSTRAINT sdor_pk;
ALTER TABLE ONLY public.rrul DROP CONSTRAINT rrul_pk;
ALTER TABLE ONLY public.osv DROP CONSTRAINT osv_pk;
ALTER TABLE ONLY public.opf DROP CONSTRAINT opf_pk;
ALTER TABLE ONLY public.objdtp DROP CONSTRAINT objdtp_pk;
ALTER TABLE ONLY public.npdd DROP CONSTRAINT npdd_pk;
ALTER TABLE ONLY public.ndu DROP CONSTRAINT ndu_pk;
ALTER TABLE ONLY public.kul DROP CONSTRAINT kul_pk;
ALTER TABLE ONLY public.kuch DROP CONSTRAINT kuch_pk;
ALTER TABLE ONLY public.factors DROP CONSTRAINT factors_pk;
ALTER TABLE ONLY public.dtptypes DROP CONSTRAINT dtptypes_pk;
ALTER TABLE ONLY public.dtp DROP CONSTRAINT dtp_pk;
ALTER TABLE ONLY public.driver DROP CONSTRAINT driver_pk;
ALTER TABLE ONLY public.dorz DROP CONSTRAINT dorz_pk;
ALTER TABLE ONLY public.districts DROP CONSTRAINT districts_pk;
ALTER TABLE ONLY public.change_org_motion DROP CONSTRAINT change_org_motion_pk;
ALTER TABLE public.weather ALTER COLUMN weather_id DROP DEFAULT;
ALTER TABLE public.ts_s ALTER COLUMN ts_s_id DROP DEFAULT;
ALTER TABLE public.ts ALTER COLUMN ts_id DROP DEFAULT;
ALTER TABLE public.tn ALTER COLUMN tn_id DROP DEFAULT;
ALTER TABLE public.t_ts ALTER COLUMN t_ts_id DROP DEFAULT;
ALTER TABLE public.st ALTER COLUMN st_id DROP DEFAULT;
ALTER TABLE public.spch ALTER COLUMN spch_id DROP DEFAULT;
ALTER TABLE public.sdor ALTER COLUMN sdor_id DROP DEFAULT;
ALTER TABLE public.rrul ALTER COLUMN rrul_id DROP DEFAULT;
ALTER TABLE public.osv ALTER COLUMN osv_id DROP DEFAULT;
ALTER TABLE public.opf ALTER COLUMN opf_id DROP DEFAULT;
ALTER TABLE public.objdtp ALTER COLUMN objdtp_id DROP DEFAULT;
ALTER TABLE public.npdd ALTER COLUMN npdd_id DROP DEFAULT;
ALTER TABLE public.ndu ALTER COLUMN ndu_id DROP DEFAULT;
ALTER TABLE public.kul ALTER COLUMN kul_id DROP DEFAULT;
ALTER TABLE public.kuch ALTER COLUMN kuch_id DROP DEFAULT;
ALTER TABLE public.factors ALTER COLUMN factor_id DROP DEFAULT;
ALTER TABLE public.dtptypes ALTER COLUMN type_id DROP DEFAULT;
ALTER TABLE public.dtp ALTER COLUMN dtp_id DROP DEFAULT;
ALTER TABLE public.driver ALTER COLUMN driver_id DROP DEFAULT;
ALTER TABLE public.dorz ALTER COLUMN dorz_id DROP DEFAULT;
ALTER TABLE public.districts ALTER COLUMN district_id DROP DEFAULT;
ALTER TABLE public.change_org_motion ALTER COLUMN motion_id DROP DEFAULT;
DROP SEQUENCE public.weather_weather_id_seq;
DROP TABLE public.weather;
DROP SEQUENCE public.ts_ts_id_seq;
DROP SEQUENCE public.ts_s_ts_s_id_seq;
DROP TABLE public.ts_s;
DROP TABLE public.ts;
DROP SEQUENCE public.tn_tn_id_seq;
DROP TABLE public.tn;
DROP SEQUENCE public.t_ts_t_ts_id_seq;
DROP TABLE public.t_ts;
DROP SEQUENCE public.st_st_id_seq;
DROP TABLE public.st;
DROP SEQUENCE public.spch_sdor_id_seq;
DROP TABLE public.spch;
DROP SEQUENCE public.sdor_sdor_id_seq;
DROP TABLE public.sdor;
DROP SEQUENCE public.rrul_rrul_id_seq;
DROP TABLE public.rrul;
DROP SEQUENCE public.osv_osv_id_seq;
DROP TABLE public.osv;
DROP SEQUENCE public.opf_opf_id_seq;
DROP TABLE public.opf;
DROP SEQUENCE public.objdtp_objdtp_id_seq;
DROP TABLE public.objdtp;
DROP SEQUENCE public.npdd_npdd_id_seq;
DROP TABLE public.npdd;
DROP SEQUENCE public.ndu_ndu_id_seq;
DROP TABLE public.ndu;
DROP SEQUENCE public.kul_kulid_seq;
DROP TABLE public.kul;
DROP SEQUENCE public.kuch_kuch_id_seq;
DROP TABLE public.kuch;
DROP SEQUENCE public.factors_factor_id_seq;
DROP TABLE public.factors;
DROP SEQUENCE public.dtptypes_type_id_seq;
DROP TABLE public.dtptypes;
DROP TABLE public.dtp_weather;
DROP TABLE public.dtp_sdor;
DROP TABLE public.dtp_objdtp;
DROP TABLE public.dtp_ndu;
DROP TABLE public.dtp_factor;
DROP SEQUENCE public.dtp_dtp_id_seq1;
DROP SEQUENCE public.dtp_dtp_id_seq;
DROP TABLE public.dtp_driver;
DROP TABLE public.dtp;
DROP TABLE public.driver_npdd;
DROP SEQUENCE public.driver_driver_id_seq;
DROP TABLE public.driver;
DROP SEQUENCE public.dorz_dorzid_seq;
DROP TABLE public.dorz;
DROP SEQUENCE public.districts_district_id_seq;
DROP TABLE public.districts;
DROP SEQUENCE public.change_org_motion_motion_id_seq;
DROP TABLE public.change_org_motion;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: change_org_motion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.change_org_motion (
    motion_id integer NOT NULL,
    motion_name character varying
);


ALTER TABLE public.change_org_motion OWNER TO postgres;

--
-- Name: change_org_motion_motion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.change_org_motion_motion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.change_org_motion_motion_id_seq OWNER TO postgres;

--
-- Name: change_org_motion_motion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.change_org_motion_motion_id_seq OWNED BY public.change_org_motion.motion_id;


--
-- Name: districts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.districts (
    district_id integer NOT NULL,
    district_name character varying NOT NULL
);


ALTER TABLE public.districts OWNER TO postgres;

--
-- Name: districts_district_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.districts_district_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.districts_district_id_seq OWNER TO postgres;

--
-- Name: districts_district_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.districts_district_id_seq OWNED BY public.districts.district_id;


--
-- Name: dorz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dorz (
    dorz_id integer NOT NULL,
    dorz_name character varying
);


ALTER TABLE public.dorz OWNER TO postgres;

--
-- Name: dorz_dorzid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dorz_dorzid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dorz_dorzid_seq OWNER TO postgres;

--
-- Name: dorz_dorzid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dorz_dorzid_seq OWNED BY public.dorz.dorz_id;


--
-- Name: driver; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.driver (
    driver_id integer NOT NULL,
    ts_id integer NOT NULL,
    t_ts_id integer NOT NULL,
    kuch_id integer NOT NULL,
    pol bit(1) NOT NULL,
    st_id integer NOT NULL,
    ts_s_id integer NOT NULL
);


ALTER TABLE public.driver OWNER TO postgres;

--
-- Name: driver_driver_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.driver_driver_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.driver_driver_id_seq OWNER TO postgres;

--
-- Name: driver_driver_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.driver_driver_id_seq OWNED BY public.driver.driver_id;


--
-- Name: driver_npdd; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.driver_npdd (
    driver_id integer NOT NULL,
    npdd_id integer NOT NULL
);


ALTER TABLE public.driver_npdd OWNER TO postgres;

--
-- Name: dtp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dtp (
    dtp_id integer NOT NULL,
    date date NOT NULL,
    "time" time without time zone NOT NULL,
    k_ts integer NOT NULL,
    k_uch integer NOT NULL,
    ran integer NOT NULL,
    pog integer NOT NULL,
    dorz_id integer NOT NULL,
    type_id integer NOT NULL,
    district_id integer NOT NULL,
    kul_id integer NOT NULL,
    osv_id integer NOT NULL,
    motion_id integer NOT NULL,
    spch_id integer NOT NULL
);


ALTER TABLE public.dtp OWNER TO postgres;

--
-- Name: dtp_driver; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dtp_driver (
    dtp_id integer NOT NULL,
    driver_id integer NOT NULL
);


ALTER TABLE public.dtp_driver OWNER TO postgres;

--
-- Name: dtp_dtp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dtp_dtp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtp_dtp_id_seq OWNER TO postgres;

--
-- Name: dtp_dtp_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dtp_dtp_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtp_dtp_id_seq1 OWNER TO postgres;

--
-- Name: dtp_dtp_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dtp_dtp_id_seq1 OWNED BY public.dtp.dtp_id;


--
-- Name: dtp_factor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dtp_factor (
    dtp_id integer NOT NULL,
    factor_id integer NOT NULL
);


ALTER TABLE public.dtp_factor OWNER TO postgres;

--
-- Name: dtp_ndu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dtp_ndu (
    dtp_id integer NOT NULL,
    ndu_id integer NOT NULL
);


ALTER TABLE public.dtp_ndu OWNER TO postgres;

--
-- Name: dtp_objdtp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dtp_objdtp (
    dtp_id integer NOT NULL,
    objdtp_id integer NOT NULL
);


ALTER TABLE public.dtp_objdtp OWNER TO postgres;

--
-- Name: dtp_sdor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dtp_sdor (
    dtp_id integer NOT NULL,
    sdor_id integer NOT NULL
);


ALTER TABLE public.dtp_sdor OWNER TO postgres;

--
-- Name: dtp_weather; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dtp_weather (
    dtp_id integer NOT NULL,
    weather_id integer NOT NULL
);


ALTER TABLE public.dtp_weather OWNER TO postgres;

--
-- Name: dtptypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dtptypes (
    type_id integer NOT NULL,
    type_name character varying NOT NULL
);


ALTER TABLE public.dtptypes OWNER TO postgres;

--
-- Name: dtptypes_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dtptypes_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dtptypes_type_id_seq OWNER TO postgres;

--
-- Name: dtptypes_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dtptypes_type_id_seq OWNED BY public.dtptypes.type_id;


--
-- Name: factors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.factors (
    factor_id integer NOT NULL,
    factor_name character varying
);


ALTER TABLE public.factors OWNER TO postgres;

--
-- Name: factors_factor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.factors_factor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.factors_factor_id_seq OWNER TO postgres;

--
-- Name: factors_factor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.factors_factor_id_seq OWNED BY public.factors.factor_id;


--
-- Name: kuch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kuch (
    kuch_id integer NOT NULL,
    kuch_name character varying
);


ALTER TABLE public.kuch OWNER TO postgres;

--
-- Name: kuch_kuch_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kuch_kuch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kuch_kuch_id_seq OWNER TO postgres;

--
-- Name: kuch_kuch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kuch_kuch_id_seq OWNED BY public.kuch.kuch_id;


--
-- Name: kul; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kul (
    kul_id integer NOT NULL,
    kul_name character varying
);


ALTER TABLE public.kul OWNER TO postgres;

--
-- Name: kul_kulid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kul_kulid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kul_kulid_seq OWNER TO postgres;

--
-- Name: kul_kulid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kul_kulid_seq OWNED BY public.kul.kul_id;


--
-- Name: ndu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ndu (
    ndu_id integer NOT NULL,
    ndu_name character varying
);


ALTER TABLE public.ndu OWNER TO postgres;

--
-- Name: ndu_ndu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ndu_ndu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ndu_ndu_id_seq OWNER TO postgres;

--
-- Name: ndu_ndu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ndu_ndu_id_seq OWNED BY public.ndu.ndu_id;


--
-- Name: npdd; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.npdd (
    npdd_id integer NOT NULL,
    npdd_name character varying
);


ALTER TABLE public.npdd OWNER TO postgres;

--
-- Name: npdd_npdd_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.npdd_npdd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.npdd_npdd_id_seq OWNER TO postgres;

--
-- Name: npdd_npdd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.npdd_npdd_id_seq OWNED BY public.npdd.npdd_id;


--
-- Name: objdtp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.objdtp (
    objdtp_id integer NOT NULL,
    objdtp_name character varying
);


ALTER TABLE public.objdtp OWNER TO postgres;

--
-- Name: objdtp_objdtp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.objdtp_objdtp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objdtp_objdtp_id_seq OWNER TO postgres;

--
-- Name: objdtp_objdtp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.objdtp_objdtp_id_seq OWNED BY public.objdtp.objdtp_id;


--
-- Name: opf; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.opf (
    opf_id integer NOT NULL,
    opf_name character varying
);


ALTER TABLE public.opf OWNER TO postgres;

--
-- Name: opf_opf_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.opf_opf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.opf_opf_id_seq OWNER TO postgres;

--
-- Name: opf_opf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.opf_opf_id_seq OWNED BY public.opf.opf_id;


--
-- Name: osv; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.osv (
    osv_id integer NOT NULL,
    osv_name character varying
);


ALTER TABLE public.osv OWNER TO postgres;

--
-- Name: osv_osv_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.osv_osv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.osv_osv_id_seq OWNER TO postgres;

--
-- Name: osv_osv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.osv_osv_id_seq OWNED BY public.osv.osv_id;


--
-- Name: rrul; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rrul (
    rrul_id integer NOT NULL,
    rrul_name character varying
);


ALTER TABLE public.rrul OWNER TO postgres;

--
-- Name: rrul_rrul_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rrul_rrul_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rrul_rrul_id_seq OWNER TO postgres;

--
-- Name: rrul_rrul_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rrul_rrul_id_seq OWNED BY public.rrul.rrul_id;


--
-- Name: sdor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sdor (
    sdor_id integer NOT NULL,
    sdor_name character varying
);


ALTER TABLE public.sdor OWNER TO postgres;

--
-- Name: sdor_sdor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sdor_sdor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sdor_sdor_id_seq OWNER TO postgres;

--
-- Name: sdor_sdor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sdor_sdor_id_seq OWNED BY public.sdor.sdor_id;


--
-- Name: spch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spch (
    spch_id integer NOT NULL,
    spch_name character varying
);


ALTER TABLE public.spch OWNER TO postgres;

--
-- Name: spch_sdor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.spch_sdor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spch_sdor_id_seq OWNER TO postgres;

--
-- Name: spch_sdor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.spch_sdor_id_seq OWNED BY public.spch.spch_id;


--
-- Name: st; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.st (
    st_id integer NOT NULL,
    st_name character varying
);


ALTER TABLE public.st OWNER TO postgres;

--
-- Name: st_st_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.st_st_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.st_st_id_seq OWNER TO postgres;

--
-- Name: st_st_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.st_st_id_seq OWNED BY public.st.st_id;


--
-- Name: t_ts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_ts (
    t_ts_id integer NOT NULL,
    t_ts_name character varying
);


ALTER TABLE public.t_ts OWNER TO postgres;

--
-- Name: t_ts_t_ts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t_ts_t_ts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_ts_t_ts_id_seq OWNER TO postgres;

--
-- Name: t_ts_t_ts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t_ts_t_ts_id_seq OWNED BY public.t_ts.t_ts_id;


--
-- Name: tn; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tn (
    tn_id integer NOT NULL,
    tn_name character varying
);


ALTER TABLE public.tn OWNER TO postgres;

--
-- Name: tn_tn_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tn_tn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tn_tn_id_seq OWNER TO postgres;

--
-- Name: tn_tn_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tn_tn_id_seq OWNED BY public.tn.tn_id;


--
-- Name: ts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ts (
    ts_id integer NOT NULL,
    tn_id integer,
    rrul_id integer,
    opf_id integer
);


ALTER TABLE public.ts OWNER TO postgres;

--
-- Name: ts_s; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ts_s (
    ts_s_id integer NOT NULL,
    ts_s_name character varying
);


ALTER TABLE public.ts_s OWNER TO postgres;

--
-- Name: ts_s_ts_s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ts_s_ts_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ts_s_ts_s_id_seq OWNER TO postgres;

--
-- Name: ts_s_ts_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ts_s_ts_s_id_seq OWNED BY public.ts_s.ts_s_id;


--
-- Name: ts_ts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ts_ts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ts_ts_id_seq OWNER TO postgres;

--
-- Name: ts_ts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ts_ts_id_seq OWNED BY public.ts.ts_id;


--
-- Name: weather; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.weather (
    weather_id integer NOT NULL,
    weather_name character varying
);


ALTER TABLE public.weather OWNER TO postgres;

--
-- Name: weather_weather_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.weather_weather_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.weather_weather_id_seq OWNER TO postgres;

--
-- Name: weather_weather_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.weather_weather_id_seq OWNED BY public.weather.weather_id;


--
-- Name: change_org_motion motion_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.change_org_motion ALTER COLUMN motion_id SET DEFAULT nextval('public.change_org_motion_motion_id_seq'::regclass);


--
-- Name: districts district_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts ALTER COLUMN district_id SET DEFAULT nextval('public.districts_district_id_seq'::regclass);


--
-- Name: dorz dorz_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dorz ALTER COLUMN dorz_id SET DEFAULT nextval('public.dorz_dorzid_seq'::regclass);


--
-- Name: driver driver_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.driver ALTER COLUMN driver_id SET DEFAULT nextval('public.driver_driver_id_seq'::regclass);


--
-- Name: dtp dtp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp ALTER COLUMN dtp_id SET DEFAULT nextval('public.dtp_dtp_id_seq1'::regclass);


--
-- Name: dtptypes type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtptypes ALTER COLUMN type_id SET DEFAULT nextval('public.dtptypes_type_id_seq'::regclass);


--
-- Name: factors factor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factors ALTER COLUMN factor_id SET DEFAULT nextval('public.factors_factor_id_seq'::regclass);


--
-- Name: kuch kuch_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kuch ALTER COLUMN kuch_id SET DEFAULT nextval('public.kuch_kuch_id_seq'::regclass);


--
-- Name: kul kul_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kul ALTER COLUMN kul_id SET DEFAULT nextval('public.kul_kulid_seq'::regclass);


--
-- Name: ndu ndu_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ndu ALTER COLUMN ndu_id SET DEFAULT nextval('public.ndu_ndu_id_seq'::regclass);


--
-- Name: npdd npdd_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.npdd ALTER COLUMN npdd_id SET DEFAULT nextval('public.npdd_npdd_id_seq'::regclass);


--
-- Name: objdtp objdtp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objdtp ALTER COLUMN objdtp_id SET DEFAULT nextval('public.objdtp_objdtp_id_seq'::regclass);


--
-- Name: opf opf_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opf ALTER COLUMN opf_id SET DEFAULT nextval('public.opf_opf_id_seq'::regclass);


--
-- Name: osv osv_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.osv ALTER COLUMN osv_id SET DEFAULT nextval('public.osv_osv_id_seq'::regclass);


--
-- Name: rrul rrul_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rrul ALTER COLUMN rrul_id SET DEFAULT nextval('public.rrul_rrul_id_seq'::regclass);


--
-- Name: sdor sdor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sdor ALTER COLUMN sdor_id SET DEFAULT nextval('public.sdor_sdor_id_seq'::regclass);


--
-- Name: spch spch_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spch ALTER COLUMN spch_id SET DEFAULT nextval('public.spch_sdor_id_seq'::regclass);


--
-- Name: st st_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.st ALTER COLUMN st_id SET DEFAULT nextval('public.st_st_id_seq'::regclass);


--
-- Name: t_ts t_ts_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_ts ALTER COLUMN t_ts_id SET DEFAULT nextval('public.t_ts_t_ts_id_seq'::regclass);


--
-- Name: tn tn_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tn ALTER COLUMN tn_id SET DEFAULT nextval('public.tn_tn_id_seq'::regclass);


--
-- Name: ts ts_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ts ALTER COLUMN ts_id SET DEFAULT nextval('public.ts_ts_id_seq'::regclass);


--
-- Name: ts_s ts_s_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ts_s ALTER COLUMN ts_s_id SET DEFAULT nextval('public.ts_s_ts_s_id_seq'::regclass);


--
-- Name: weather weather_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weather ALTER COLUMN weather_id SET DEFAULT nextval('public.weather_weather_id_seq'::regclass);


--
-- Data for Name: change_org_motion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.change_org_motion (motion_id, motion_name) FROM stdin;
\.


--
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.districts (district_id, district_name) FROM stdin;
1	Адмиралтейский
2	Василеостровский
3	Выборгский
4	Калининский
5	Кировский
6	Колпинский
7	Красногвардейский
8	Красносельский
9	Конштадтский
10	Курортный
11	Московский
12	Невский
13	Петроградский
14	Приморский
15	Пушкинский
16	Фрунзенский
17	Петродворцовый
18	Центральный
\.


--
-- Data for Name: dorz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dorz (dorz_id, dorz_name) FROM stdin;
\.


--
-- Data for Name: driver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.driver (driver_id, ts_id, t_ts_id, kuch_id, pol, st_id, ts_s_id) FROM stdin;
\.


--
-- Data for Name: driver_npdd; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.driver_npdd (driver_id, npdd_id) FROM stdin;
\.


--
-- Data for Name: dtp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dtp (dtp_id, date, "time", k_ts, k_uch, ran, pog, dorz_id, type_id, district_id, kul_id, osv_id, motion_id, spch_id) FROM stdin;
\.


--
-- Data for Name: dtp_driver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dtp_driver (dtp_id, driver_id) FROM stdin;
\.


--
-- Data for Name: dtp_factor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dtp_factor (dtp_id, factor_id) FROM stdin;
\.


--
-- Data for Name: dtp_ndu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dtp_ndu (dtp_id, ndu_id) FROM stdin;
\.


--
-- Data for Name: dtp_objdtp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dtp_objdtp (dtp_id, objdtp_id) FROM stdin;
\.


--
-- Data for Name: dtp_sdor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dtp_sdor (dtp_id, sdor_id) FROM stdin;
\.


--
-- Data for Name: dtp_weather; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dtp_weather (dtp_id, weather_id) FROM stdin;
\.


--
-- Data for Name: dtptypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dtptypes (type_id, type_name) FROM stdin;
1	Столкновение
2	Наезд на пешехода
3	Наезд на велосипедиста
4	Наезд на стоящее ТС
5	Падение пассажира 
6	Съезд с дороги
7	Наезд на препятствие
8	Иной вид ДТП
\.


--
-- Data for Name: factors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.factors (factor_id, factor_name) FROM stdin;
\.


--
-- Data for Name: kuch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kuch (kuch_id, kuch_name) FROM stdin;
\.


--
-- Data for Name: kul; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kul (kul_id, kul_name) FROM stdin;
\.


--
-- Data for Name: ndu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ndu (ndu_id, ndu_name) FROM stdin;
\.


--
-- Data for Name: npdd; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.npdd (npdd_id, npdd_name) FROM stdin;
\.


--
-- Data for Name: objdtp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.objdtp (objdtp_id, objdtp_name) FROM stdin;
\.


--
-- Data for Name: opf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.opf (opf_id, opf_name) FROM stdin;
\.


--
-- Data for Name: osv; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.osv (osv_id, osv_name) FROM stdin;
\.


--
-- Data for Name: rrul; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rrul (rrul_id, rrul_name) FROM stdin;
\.


--
-- Data for Name: sdor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sdor (sdor_id, sdor_name) FROM stdin;
\.


--
-- Data for Name: spch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spch (spch_id, spch_name) FROM stdin;
\.


--
-- Data for Name: st; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.st (st_id, st_name) FROM stdin;
\.


--
-- Data for Name: t_ts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t_ts (t_ts_id, t_ts_name) FROM stdin;
\.


--
-- Data for Name: tn; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tn (tn_id, tn_name) FROM stdin;
\.


--
-- Data for Name: ts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ts (ts_id, tn_id, rrul_id, opf_id) FROM stdin;
\.


--
-- Data for Name: ts_s; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ts_s (ts_s_id, ts_s_name) FROM stdin;
\.


--
-- Data for Name: weather; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.weather (weather_id, weather_name) FROM stdin;
\.


--
-- Name: change_org_motion_motion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.change_org_motion_motion_id_seq', 1, false);


--
-- Name: districts_district_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.districts_district_id_seq', 18, true);


--
-- Name: dorz_dorzid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dorz_dorzid_seq', 1, false);


--
-- Name: driver_driver_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.driver_driver_id_seq', 1, false);


--
-- Name: dtp_dtp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dtp_dtp_id_seq', 1, false);


--
-- Name: dtp_dtp_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dtp_dtp_id_seq1', 1, false);


--
-- Name: dtptypes_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dtptypes_type_id_seq', 8, true);


--
-- Name: factors_factor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.factors_factor_id_seq', 1, false);


--
-- Name: kuch_kuch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kuch_kuch_id_seq', 1, false);


--
-- Name: kul_kulid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kul_kulid_seq', 1, false);


--
-- Name: ndu_ndu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ndu_ndu_id_seq', 1, false);


--
-- Name: npdd_npdd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.npdd_npdd_id_seq', 1, false);


--
-- Name: objdtp_objdtp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.objdtp_objdtp_id_seq', 1, false);


--
-- Name: opf_opf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.opf_opf_id_seq', 1, false);


--
-- Name: osv_osv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.osv_osv_id_seq', 1, false);


--
-- Name: rrul_rrul_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rrul_rrul_id_seq', 1, false);


--
-- Name: sdor_sdor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sdor_sdor_id_seq', 1, false);


--
-- Name: spch_sdor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.spch_sdor_id_seq', 1, false);


--
-- Name: st_st_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.st_st_id_seq', 1, false);


--
-- Name: t_ts_t_ts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t_ts_t_ts_id_seq', 1, false);


--
-- Name: tn_tn_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tn_tn_id_seq', 1, false);


--
-- Name: ts_s_ts_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ts_s_ts_s_id_seq', 1, false);


--
-- Name: ts_ts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ts_ts_id_seq', 1, false);


--
-- Name: weather_weather_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.weather_weather_id_seq', 1, false);


--
-- Name: change_org_motion change_org_motion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.change_org_motion
    ADD CONSTRAINT change_org_motion_pk PRIMARY KEY (motion_id);


--
-- Name: districts districts_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pk PRIMARY KEY (district_id);


--
-- Name: dorz dorz_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dorz
    ADD CONSTRAINT dorz_pk PRIMARY KEY (dorz_id);


--
-- Name: driver driver_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.driver
    ADD CONSTRAINT driver_pk PRIMARY KEY (driver_id);


--
-- Name: dtp dtp_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp
    ADD CONSTRAINT dtp_pk PRIMARY KEY (dtp_id);


--
-- Name: dtptypes dtptypes_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtptypes
    ADD CONSTRAINT dtptypes_pk PRIMARY KEY (type_id);


--
-- Name: factors factors_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factors
    ADD CONSTRAINT factors_pk PRIMARY KEY (factor_id);


--
-- Name: kuch kuch_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kuch
    ADD CONSTRAINT kuch_pk PRIMARY KEY (kuch_id);


--
-- Name: kul kul_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kul
    ADD CONSTRAINT kul_pk PRIMARY KEY (kul_id);


--
-- Name: ndu ndu_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ndu
    ADD CONSTRAINT ndu_pk PRIMARY KEY (ndu_id);


--
-- Name: npdd npdd_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.npdd
    ADD CONSTRAINT npdd_pk PRIMARY KEY (npdd_id);


--
-- Name: objdtp objdtp_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objdtp
    ADD CONSTRAINT objdtp_pk PRIMARY KEY (objdtp_id);


--
-- Name: opf opf_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opf
    ADD CONSTRAINT opf_pk PRIMARY KEY (opf_id);


--
-- Name: osv osv_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.osv
    ADD CONSTRAINT osv_pk PRIMARY KEY (osv_id);


--
-- Name: rrul rrul_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rrul
    ADD CONSTRAINT rrul_pk PRIMARY KEY (rrul_id);


--
-- Name: sdor sdor_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sdor
    ADD CONSTRAINT sdor_pk PRIMARY KEY (sdor_id);


--
-- Name: spch spch_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spch
    ADD CONSTRAINT spch_pk PRIMARY KEY (spch_id);


--
-- Name: st st_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.st
    ADD CONSTRAINT st_pk PRIMARY KEY (st_id);


--
-- Name: t_ts t_ts_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_ts
    ADD CONSTRAINT t_ts_pk PRIMARY KEY (t_ts_id);


--
-- Name: tn tn_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tn
    ADD CONSTRAINT tn_pk PRIMARY KEY (tn_id);


--
-- Name: ts ts_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ts
    ADD CONSTRAINT ts_pk PRIMARY KEY (ts_id);


--
-- Name: ts_s ts_s_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ts_s
    ADD CONSTRAINT ts_s_pk PRIMARY KEY (ts_s_id);


--
-- Name: weather weather_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weather
    ADD CONSTRAINT weather_pk PRIMARY KEY (weather_id);


--
-- Name: change_org_motion_motion_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX change_org_motion_motion_id_uindex ON public.change_org_motion USING btree (motion_id);


--
-- Name: change_org_motion_motion_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX change_org_motion_motion_name_uindex ON public.change_org_motion USING btree (motion_name);


--
-- Name: districts_district_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX districts_district_id_uindex ON public.districts USING btree (district_id);


--
-- Name: districts_district_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX districts_district_name_uindex ON public.districts USING btree (district_name);


--
-- Name: dorz_dorzid_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX dorz_dorzid_uindex ON public.dorz USING btree (dorz_id);


--
-- Name: dorz_dorzname_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX dorz_dorzname_uindex ON public.dorz USING btree (dorz_name);


--
-- Name: driver_driver_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX driver_driver_id_uindex ON public.driver USING btree (driver_id);


--
-- Name: dtp_dtp_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX dtp_dtp_id_uindex ON public.dtp USING btree (dtp_id);


--
-- Name: dtptypes_type_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX dtptypes_type_id_uindex ON public.dtptypes USING btree (type_id);


--
-- Name: dtptypes_type_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX dtptypes_type_name_uindex ON public.dtptypes USING btree (type_name);


--
-- Name: factors_factor_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX factors_factor_id_uindex ON public.factors USING btree (factor_id);


--
-- Name: factors_factor_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX factors_factor_name_uindex ON public.factors USING btree (factor_name);


--
-- Name: kuch_kuch_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX kuch_kuch_id_uindex ON public.kuch USING btree (kuch_id);


--
-- Name: kuch_kuch_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX kuch_kuch_name_uindex ON public.kuch USING btree (kuch_name);


--
-- Name: kul_kulid_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX kul_kulid_uindex ON public.kul USING btree (kul_id);


--
-- Name: kul_kulname_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX kul_kulname_uindex ON public.kul USING btree (kul_name);


--
-- Name: ndu_ndu_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ndu_ndu_id_uindex ON public.ndu USING btree (ndu_id);


--
-- Name: ndu_ndu_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ndu_ndu_name_uindex ON public.ndu USING btree (ndu_name);


--
-- Name: npdd_npdd_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX npdd_npdd_id_uindex ON public.npdd USING btree (npdd_id);


--
-- Name: npdd_npdd_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX npdd_npdd_name_uindex ON public.npdd USING btree (npdd_name);


--
-- Name: objdtp_objdtp_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX objdtp_objdtp_id_uindex ON public.objdtp USING btree (objdtp_id);


--
-- Name: objdtp_objdtp_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX objdtp_objdtp_name_uindex ON public.objdtp USING btree (objdtp_name);


--
-- Name: opf_opf_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX opf_opf_id_uindex ON public.opf USING btree (opf_id);


--
-- Name: opf_opf_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX opf_opf_name_uindex ON public.opf USING btree (opf_name);


--
-- Name: osv_osv_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX osv_osv_id_uindex ON public.osv USING btree (osv_id);


--
-- Name: osv_osv_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX osv_osv_name_uindex ON public.osv USING btree (osv_name);


--
-- Name: rrul_rrul_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX rrul_rrul_id_uindex ON public.rrul USING btree (rrul_id);


--
-- Name: rrul_rrul_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX rrul_rrul_name_uindex ON public.rrul USING btree (rrul_name);


--
-- Name: sdor_sdor_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sdor_sdor_id_uindex ON public.sdor USING btree (sdor_id);


--
-- Name: sdor_sdor_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sdor_sdor_name_uindex ON public.sdor USING btree (sdor_name);


--
-- Name: spch_sdor_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX spch_sdor_id_uindex ON public.spch USING btree (spch_id);


--
-- Name: spch_sdor_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX spch_sdor_name_uindex ON public.spch USING btree (spch_name);


--
-- Name: st_st_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX st_st_id_uindex ON public.st USING btree (st_id);


--
-- Name: st_st_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX st_st_name_uindex ON public.st USING btree (st_name);


--
-- Name: t_ts_t_ts_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX t_ts_t_ts_id_uindex ON public.t_ts USING btree (t_ts_id);


--
-- Name: t_ts_t_ts_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX t_ts_t_ts_name_uindex ON public.t_ts USING btree (t_ts_name);


--
-- Name: tn_tn_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX tn_tn_id_uindex ON public.tn USING btree (tn_id);


--
-- Name: tn_tn_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX tn_tn_name_uindex ON public.tn USING btree (tn_name);


--
-- Name: ts_s_ts_s_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ts_s_ts_s_id_uindex ON public.ts_s USING btree (ts_s_id);


--
-- Name: ts_s_ts_s_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ts_s_ts_s_name_uindex ON public.ts_s USING btree (ts_s_name);


--
-- Name: ts_ts_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ts_ts_id_uindex ON public.ts USING btree (ts_id);


--
-- Name: weather_weather_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX weather_weather_id_uindex ON public.weather USING btree (weather_id);


--
-- Name: weather_weather_name_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX weather_weather_name_uindex ON public.weather USING btree (weather_name);


--
-- Name: driver driver_kuch_kuch_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.driver
    ADD CONSTRAINT driver_kuch_kuch_id_fk FOREIGN KEY (kuch_id) REFERENCES public.kuch(kuch_id);


--
-- Name: driver_npdd driver_npdd_driver_driver_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.driver_npdd
    ADD CONSTRAINT driver_npdd_driver_driver_id_fk FOREIGN KEY (driver_id) REFERENCES public.driver(driver_id);


--
-- Name: driver_npdd driver_npdd_npdd_npdd_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.driver_npdd
    ADD CONSTRAINT driver_npdd_npdd_npdd_id_fk FOREIGN KEY (npdd_id) REFERENCES public.npdd(npdd_id);


--
-- Name: driver driver_st_st_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.driver
    ADD CONSTRAINT driver_st_st_id_fk FOREIGN KEY (st_id) REFERENCES public.st(st_id);


--
-- Name: driver driver_t_ts_t_ts_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.driver
    ADD CONSTRAINT driver_t_ts_t_ts_id_fk FOREIGN KEY (t_ts_id) REFERENCES public.t_ts(t_ts_id);


--
-- Name: driver driver_ts_s_ts_s_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.driver
    ADD CONSTRAINT driver_ts_s_ts_s_id_fk FOREIGN KEY (ts_s_id) REFERENCES public.ts_s(ts_s_id);


--
-- Name: driver driver_ts_ts_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.driver
    ADD CONSTRAINT driver_ts_ts_id_fk FOREIGN KEY (ts_id) REFERENCES public.ts(ts_id);


--
-- Name: dtp dtp_change_org_motion_motion_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp
    ADD CONSTRAINT dtp_change_org_motion_motion_id_fk FOREIGN KEY (motion_id) REFERENCES public.change_org_motion(motion_id);


--
-- Name: dtp dtp_districts_district_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp
    ADD CONSTRAINT dtp_districts_district_id_fk FOREIGN KEY (district_id) REFERENCES public.districts(district_id);


--
-- Name: dtp dtp_dorz_dorz_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp
    ADD CONSTRAINT dtp_dorz_dorz_id_fk FOREIGN KEY (dorz_id) REFERENCES public.dorz(dorz_id);


--
-- Name: dtp_driver dtp_driver_driver_driver_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp_driver
    ADD CONSTRAINT dtp_driver_driver_driver_id_fk FOREIGN KEY (driver_id) REFERENCES public.driver(driver_id);


--
-- Name: dtp_driver dtp_driver_dtp_dtp_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp_driver
    ADD CONSTRAINT dtp_driver_dtp_dtp_id_fk FOREIGN KEY (dtp_id) REFERENCES public.dtp(dtp_id);


--
-- Name: dtp dtp_dtptypes_type_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp
    ADD CONSTRAINT dtp_dtptypes_type_id_fk FOREIGN KEY (type_id) REFERENCES public.dtptypes(type_id);


--
-- Name: dtp_factor dtp_factor_dtp_dtp_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp_factor
    ADD CONSTRAINT dtp_factor_dtp_dtp_id_fk FOREIGN KEY (dtp_id) REFERENCES public.dtp(dtp_id);


--
-- Name: dtp_factor dtp_factor_factors_factor_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp_factor
    ADD CONSTRAINT dtp_factor_factors_factor_id_fk FOREIGN KEY (factor_id) REFERENCES public.factors(factor_id);


--
-- Name: dtp dtp_kul_kul_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp
    ADD CONSTRAINT dtp_kul_kul_id_fk FOREIGN KEY (kul_id) REFERENCES public.kul(kul_id);


--
-- Name: dtp_ndu dtp_ndu_dtp_dtp_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp_ndu
    ADD CONSTRAINT dtp_ndu_dtp_dtp_id_fk FOREIGN KEY (dtp_id) REFERENCES public.dtp(dtp_id);


--
-- Name: dtp_ndu dtp_ndu_ndu_ndu_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp_ndu
    ADD CONSTRAINT dtp_ndu_ndu_ndu_id_fk FOREIGN KEY (ndu_id) REFERENCES public.ndu(ndu_id);


--
-- Name: dtp_objdtp dtp_objdtp_dtp_dtp_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp_objdtp
    ADD CONSTRAINT dtp_objdtp_dtp_dtp_id_fk FOREIGN KEY (dtp_id) REFERENCES public.dtp(dtp_id);


--
-- Name: dtp_objdtp dtp_objdtp_objdtp_objdtp_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp_objdtp
    ADD CONSTRAINT dtp_objdtp_objdtp_objdtp_id_fk FOREIGN KEY (objdtp_id) REFERENCES public.objdtp(objdtp_id);


--
-- Name: dtp dtp_osv_osv_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp
    ADD CONSTRAINT dtp_osv_osv_id_fk FOREIGN KEY (osv_id) REFERENCES public.osv(osv_id);


--
-- Name: dtp_sdor dtp_sdor_dtp_dtp_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp_sdor
    ADD CONSTRAINT dtp_sdor_dtp_dtp_id_fk FOREIGN KEY (dtp_id) REFERENCES public.dtp(dtp_id);


--
-- Name: dtp_sdor dtp_sdor_sdor_sdor_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp_sdor
    ADD CONSTRAINT dtp_sdor_sdor_sdor_id_fk FOREIGN KEY (sdor_id) REFERENCES public.sdor(sdor_id);


--
-- Name: dtp dtp_spch_spch_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp
    ADD CONSTRAINT dtp_spch_spch_id_fk FOREIGN KEY (spch_id) REFERENCES public.spch(spch_id);


--
-- Name: dtp_weather dtp_weather_dtp_dtp_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp_weather
    ADD CONSTRAINT dtp_weather_dtp_dtp_id_fk FOREIGN KEY (dtp_id) REFERENCES public.dtp(dtp_id);


--
-- Name: dtp_weather dtp_weather_weather_weather_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dtp_weather
    ADD CONSTRAINT dtp_weather_weather_weather_id_fk FOREIGN KEY (weather_id) REFERENCES public.weather(weather_id);


--
-- Name: ts ts_opf_opf_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ts
    ADD CONSTRAINT ts_opf_opf_id_fk FOREIGN KEY (opf_id) REFERENCES public.opf(opf_id);


--
-- Name: ts ts_rrul_rrul_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ts
    ADD CONSTRAINT ts_rrul_rrul_id_fk FOREIGN KEY (rrul_id) REFERENCES public.rrul(rrul_id);


--
-- Name: ts ts_tn_tn_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ts
    ADD CONSTRAINT ts_tn_tn_id_fk FOREIGN KEY (tn_id) REFERENCES public.tn(tn_id);


--
-- PostgreSQL database dump complete
--

