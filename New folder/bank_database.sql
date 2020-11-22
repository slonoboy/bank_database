--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

-- Started on 2020-11-22 22:50:16

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
-- TOC entry 206 (class 1259 OID 16610)
-- Name: account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account (
    account_id numeric(12,0) NOT NULL,
    phone_number character varying(30),
    pin numeric(6,0),
    balance integer,
    client_id numeric(12,0)
);


ALTER TABLE public.account OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16595)
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    client_id numeric(12,0) NOT NULL,
    first_name character varying(40),
    last_name character varying(40),
    town character varying(40),
    address character varying(40),
    income integer
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16645)
-- Name: deposit_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deposit_details (
    id numeric(12,0) NOT NULL,
    description character varying(255),
    deposit_date date,
    amount_of_deposit integer,
    employee_id numeric(12,0),
    deposit_id numeric(12,0)
);


ALTER TABLE public.deposit_details OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16635)
-- Name: deposits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deposits (
    deposit_id numeric(12,0) NOT NULL,
    balance integer,
    interest numeric(5,2),
    client_id numeric(12,0)
);


ALTER TABLE public.deposits OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16575)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id numeric(12,0) NOT NULL,
    first_name character varying(40),
    last_name character varying(40),
    address character varying(40),
    position_id numeric(12,0),
    working_time_id numeric(12,0)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16600)
-- Name: loans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loans (
    loan_id numeric(12,0) NOT NULL,
    description character varying(255),
    start_time date,
    end_time date,
    total_amount integer,
    client_id numeric(12,0)
);


ALTER TABLE public.loans OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16565)
-- Name: position; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."position" (
    position_id numeric(12,0) NOT NULL,
    name character varying(40),
    salary integer
);


ALTER TABLE public."position" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16590)
-- Name: transaction_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaction_type (
    transaction_type_id numeric(12,0) NOT NULL,
    description character varying(255)
);


ALTER TABLE public.transaction_type OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16620)
-- Name: transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions (
    transaction_id numeric(12,0) NOT NULL,
    transaction_date date,
    transaction_type_id numeric(12,0),
    account_id numeric(12,0),
    amount_of_transaction integer
);


ALTER TABLE public.transactions OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16570)
-- Name: work_experience; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_experience (
    id numeric(12,0) NOT NULL,
    hire_date date,
    quit_date date
);


ALTER TABLE public.work_experience OWNER TO postgres;

--
-- TOC entry 3053 (class 0 OID 16610)
-- Dependencies: 206
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (1, '+46 (728) 687-1338', 3013, 11000, 1);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (2, '+86 (258) 589-4346', 3999, 5400, 2);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (3, '+358 (933) 264-9581', 5271, 19000, 3);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (4, '+358 (217) 829-0876', 2151, 11000, 4);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (5, '+60 (540) 263-6705', 4705, 17500, 5);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (7, '+86 (398) 712-5830', 7997, 8700, 7);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (8, '+63 (727) 693-9363', 6143, 8400, 8);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (9, '+86 (585) 854-5889', 7291, 4400, 9);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (10, '+230 (281) 689-7311', 8603, 13900, 10);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (11, '+420 (796) 173-5054', 1720, 9300, 11);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (12, '+976 (508) 275-2907', 5247, 8500, 12);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (13, '+86 (259) 547-1809', 2455, 14400, 13);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (14, '+7 (619) 345-3471', 6711, 6000, 14);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (15, '+7 (229) 524-9006', 9657, 9700, 15);
INSERT INTO public.account (account_id, phone_number, pin, balance, client_id) VALUES (6, '+62 (660) 708-1933', 9451, 14200, 6);


--
-- TOC entry 3051 (class 0 OID 16595)
-- Dependencies: 204
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (1, 'Welbie', 'Kidwell', '262 Washington Lane', 'wkidwell0@ustream.tv', 3800);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (2, 'Uriah', 'Bridal', '4174 8th Plaza', 'ubridal1@nba.com', 5200);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (3, 'Cris', 'Slayton', '99821 Eastwood Place', 'cslayton2@twitter.com', 3500);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (4, 'Kingsly', 'Lathom', '721 Cottonwood Center', 'klathom3@amazonaws.com', 4900);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (6, 'Wally', 'Tredger', '46 Commercial Court', 'wtredger5@cloudflare.com', 4300);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (7, 'Priscilla', 'Ricciardelli', '78984 Petterle Trail', 'pricciardelli6@sakura.ne.jp', 3100);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (8, 'Janith', 'Madine', '71 Nobel Road', 'jmadine7@nydailynews.com', 3400);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (9, 'Melli', 'Weed', '0321 Briar Crest Point', 'mweed8@google.cn', 5200);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (10, 'Jeromy', 'Calvert', '7363 Northfield Point', 'jcalvert9@cnbc.com', 4300);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (11, 'Dilan', 'O''Glassane', '5465 Autumn Leaf Road', 'doglassanea@tinyurl.com', 4200);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (12, 'Guthry', 'Baggett', '70162 Harper Alley', 'gbaggettb@comsenz.com', 5000);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (13, 'Angel', 'Muro', '644 Roth Street', 'amuroc@wufoo.com', 3600);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (14, 'Clari', 'Dallemore', '22 Atwood Hill', 'cdallemored@prweb.com', 3400);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (15, 'Jarad', 'Clewlowe', '4 Talisman Trail', 'jclewlowee@liveinternet.ru', 4500);
INSERT INTO public.clients (client_id, first_name, last_name, town, address, income) VALUES (5, 'Mabel', 'Frammingham', '02838 Kensington Plaza', 'mframmingham4@github.com', 4300);


--
-- TOC entry 3056 (class 0 OID 16645)
-- Dependencies: 209
-- Data for Name: deposit_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (1, 'Home remodeling', '2017-04-07', 90, 10, 1);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (2, 'Vehicle financing', '2015-11-03', 185, 12, 5);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (3, 'Vacation costs', '2018-02-02', 260, 13, 3);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (4, 'Vehicle financing', '2018-02-06', 190, 14, 8);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (5, 'Home remodeling', '2016-02-09', 100, 15, 2);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (6, 'Home remodeling', '2016-02-12', 150, 16, 6);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (7, 'Vacation costs', '2018-02-07', 200, 17, 7);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (8, 'Vehicle financing', '2019-05-09', 170, 18, 4);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (9, 'Home remodeling', '2017-07-07', 170, 19, 11);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (10, 'Home remodeling', '2017-01-02', 110, 20, 14);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (11, 'Vacation costs', '2015-01-02', 120, 21, 9);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (12, 'Vehicle financing', '2019-06-07', 180, 22, 12);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (13, 'Home remodeling', '2018-04-09', 190, 23, 13);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (15, 'Vehicle financing', '2015-10-07', 145, 25, 10);
INSERT INTO public.deposit_details (id, description, deposit_date, amount_of_deposit, employee_id, deposit_id) VALUES (14, 'Vacation costs', '2019-07-09', 130, 24, 15);


--
-- TOC entry 3055 (class 0 OID 16635)
-- Dependencies: 208
-- Data for Name: deposits; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (1, 7750, 0.41, 1);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (2, 2700, 0.50, 2);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (3, 8600, 0.31, 3);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (4, 8180, 0.32, 4);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (5, 5400, 0.49, 5);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (6, 4770, 0.44, 6);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (7, 8600, 0.31, 7);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (8, 5300, 0.49, 8);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (10, 6000, 0.43, 10);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (11, 8000, 0.32, 11);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (12, 6200, 0.43, 12);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (13, 4000, 0.48, 13);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (14, 8800, 0.36, 14);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (15, 6800, 0.45, 15);
INSERT INTO public.deposits (deposit_id, balance, interest, client_id) VALUES (9, 6000, 0.43, 9);


--
-- TOC entry 3049 (class 0 OID 16575)
-- Dependencies: 202
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (10, 'Caria', 'Beaton', 'cbeaton0@intel.com', 4, 1);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (11, 'Lorena', 'Bellwood', 'lbellwood1@geocities.com', 2, 2);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (12, 'Anders', 'Glaze', 'aglaze2@themeforest.net', 3, 3);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (14, 'Sula', 'Tinton', 'stinton4@baidu.com', 1, 5);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (15, 'Wittie', 'Ashfull', 'washfull5@nymag.com', 6, 6);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (16, 'Vida', 'Kahen', 'vkahen6@rediff.com', 7, 7);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (17, 'Lucretia', 'Treske', 'ltreske7@hostgator.com', 9, 8);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (18, 'Kit', 'Marskell', 'kmarskell8@digg.com', 8, 9);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (19, 'Emmy', 'Clardge', 'eclardge9@scribd.com', 10, 10);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (20, 'Christie', 'Rainsbury', 'crainsburya@hexun.com', 5, 11);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (21, 'Vanya', 'Paulitschke', 'vpaulitschkeb@china.com.cn', 4, 12);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (22, 'Levi', 'Snoden', 'lsnodenc@sciencedirect.com', 3, 13);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (23, 'Jemimah', 'Luton', 'jlutond@w3.org', 6, 14);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (24, 'Jolyn', 'Malcher', 'jmalchere@tamu.edu', 5, 15);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (25, 'Konstance', 'Sorrill', 'ksorrillf@wufoo.com', 3, 16);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (26, 'Haley', 'Holdall', 'hholdallg@theglobeandmail.com', 2, 17);
INSERT INTO public.employees (employee_id, first_name, last_name, address, position_id, working_time_id) VALUES (13, 'Harrietta', 'Stenton', 'hstenton3@gmail.com', 2, 4);


--
-- TOC entry 3052 (class 0 OID 16600)
-- Dependencies: 205
-- Data for Name: loans; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.loans (loan_id, description, start_time, end_time, total_amount, client_id) VALUES (1, 'Home remodeling', '2017-05-11', '2020-08-12', 3800, 1);
INSERT INTO public.loans (loan_id, description, start_time, end_time, total_amount, client_id) VALUES (2, 'Vehicle financing', '2019-06-22', '2022-05-05', 2000, 2);
INSERT INTO public.loans (loan_id, description, start_time, end_time, total_amount, client_id) VALUES (3, 'Wedding expenses', '2018-06-11', '2024-04-08', 3400, 5);
INSERT INTO public.loans (loan_id, description, start_time, end_time, total_amount, client_id) VALUES (4, 'Vacation costs', '2015-01-09', '2023-08-31', 3800, 4);
INSERT INTO public.loans (loan_id, description, start_time, end_time, total_amount, client_id) VALUES (5, 'Emergency expenses', '2019-07-31', '2022-02-02', 2900, 2);
INSERT INTO public.loans (loan_id, description, start_time, end_time, total_amount, client_id) VALUES (7, 'Vehicle financing', '2016-04-26', '2020-12-03', 3900, 7);
INSERT INTO public.loans (loan_id, description, start_time, end_time, total_amount, client_id) VALUES (8, 'Home remodeling', '2017-04-23', '2021-11-04', 3900, 8);
INSERT INTO public.loans (loan_id, description, start_time, end_time, total_amount, client_id) VALUES (9, 'Emergency expenses', '2017-08-25', '2020-02-24', 3100, 6);
INSERT INTO public.loans (loan_id, description, start_time, end_time, total_amount, client_id) VALUES (10, 'Monthly costs', '2017-06-18', '2021-12-01', 2000, 10);
INSERT INTO public.loans (loan_id, description, start_time, end_time, total_amount, client_id) VALUES (6, 'Moving costs', '2015-03-04', '2020-08-02', 4100, 3);


--
-- TOC entry 3047 (class 0 OID 16565)
-- Dependencies: 200
-- Data for Name: position; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."position" (position_id, name, salary) VALUES (1, 'Financial Analyst', 7000);
INSERT INTO public."position" (position_id, name, salary) VALUES (2, 'Relationship Manager', 6500);
INSERT INTO public."position" (position_id, name, salary) VALUES (3, 'Accountant', 5500);
INSERT INTO public."position" (position_id, name, salary) VALUES (4, 'Auditor', 5800);
INSERT INTO public."position" (position_id, name, salary) VALUES (5, 'Branch Manager', 4800);
INSERT INTO public."position" (position_id, name, salary) VALUES (6, 'Loan Officer', 5300);
INSERT INTO public."position" (position_id, name, salary) VALUES (8, 'Mortgage consultant', 4500);
INSERT INTO public."position" (position_id, name, salary) VALUES (9, 'Data Processing Officer', 3800);
INSERT INTO public."position" (position_id, name, salary) VALUES (10, 'Financial advisor', 4700);
INSERT INTO public."position" (position_id, name, salary) VALUES (11, 'Bank teller', 4000);
INSERT INTO public."position" (position_id, name, salary) VALUES (7, 'Collector', 3500);


--
-- TOC entry 3050 (class 0 OID 16590)
-- Dependencies: 203
-- Data for Name: transaction_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.transaction_type (transaction_type_id, description) VALUES (101, 'ATM');
INSERT INTO public.transaction_type (transaction_type_id, description) VALUES (102, 'Charge');
INSERT INTO public.transaction_type (transaction_type_id, description) VALUES (103, 'Online');
INSERT INTO public.transaction_type (transaction_type_id, description) VALUES (104, 'Deposit');
INSERT INTO public.transaction_type (transaction_type_id, description) VALUES (105, 'Transfer');
INSERT INTO public.transaction_type (transaction_type_id, description) VALUES (106, 'Withdrawal');
INSERT INTO public.transaction_type (transaction_type_id, description) VALUES (108, 'Check');
INSERT INTO public.transaction_type (transaction_type_id, description) VALUES (109, 'Deposit income');
INSERT INTO public.transaction_type (transaction_type_id, description) VALUES (110, 'Loan loss');
INSERT INTO public.transaction_type (transaction_type_id, description) VALUES (107, 'Cash/Debitcard purchase');


--
-- TOC entry 3054 (class 0 OID 16620)
-- Dependencies: 207
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (1, '2017-10-10', 101, 11, 3090);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (2, '2020-02-08', 106, 3, 6800);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (3, '2019-01-11', 102, 13, 7268);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (4, '2015-01-10', 105, 8, 4527);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (5, '2020-04-10', 105, 7, 1683);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (6, '2017-02-11', 106, 2, 300);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (7, '2015-01-09', 105, 6, 2205);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (8, '2017-06-10', 102, 9, 7998);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (9, '2017-01-07', 109, 15, 1703);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (11, '2019-02-03', 110, 1, 5717);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (12, '2020-03-01', 101, 8, 1069);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (13, '2015-10-01', 103, 11, 313);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (14, '2015-02-11', 101, 10, 3907);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (15, '2015-03-01', 107, 8, 2222);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (16, '2016-02-04', 107, 8, 2158);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (17, '2015-11-05', 103, 7, 282);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (18, '2018-03-12', 103, 6, 7658);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (19, '2015-01-06', 103, 4, 6563);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (20, '2016-02-09', 110, 1, 2268);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (21, '2019-02-01', 110, 11, 613);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (22, '2018-01-02', 101, 12, 3132);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (23, '2016-03-07', 108, 2, 3790);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (24, '2015-02-08', 109, 9, 6443);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (25, '2016-01-05', 102, 10, 7461);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (26, '2018-09-03', 104, 3, 6204);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (27, '2017-04-05', 101, 5, 1395);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (28, '2017-02-01', 108, 1, 5507);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (29, '2018-02-10', 103, 14, 1355);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (30, '2019-01-06', 110, 13, 1960);
INSERT INTO public.transactions (transaction_id, transaction_date, transaction_type_id, account_id, amount_of_transaction) VALUES (10, '2018-03-06', 104, 3, 6090);


--
-- TOC entry 3048 (class 0 OID 16570)
-- Dependencies: 201
-- Data for Name: work_experience; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (1, '2019-05-10', NULL);
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (2, '2016-03-04', NULL);
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (3, '2013-12-15', NULL);
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (4, '2016-08-02', '2017-12-03');
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (5, '2013-01-09', NULL);
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (6, '2014-07-17', NULL);
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (7, '2015-05-18', NULL);
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (8, '2014-10-24', '2017-12-24');
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (9, '2017-09-15', NULL);
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (10, '2011-06-29', NULL);
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (11, '2013-06-02', '2015-12-14');
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (12, '2015-08-08', '2020-06-01');
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (13, '2011-12-21', NULL);
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (14, '2013-11-26', NULL);
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (15, '2017-03-16', NULL);
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (16, '2011-10-27', '2019-01-09');
INSERT INTO public.work_experience (id, hire_date, quit_date) VALUES (17, '2014-12-24', NULL);


--
-- TOC entry 2899 (class 2606 OID 16667)
-- Name: account account_pin_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pin_key UNIQUE (pin);


--
-- TOC entry 2901 (class 2606 OID 16614)
-- Name: account account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (account_id);


--
-- TOC entry 2895 (class 2606 OID 16599)
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (client_id);


--
-- TOC entry 2907 (class 2606 OID 16649)
-- Name: deposit_details deposit_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deposit_details
    ADD CONSTRAINT deposit_details_pkey PRIMARY KEY (id);


--
-- TOC entry 2905 (class 2606 OID 16639)
-- Name: deposits deposits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deposits
    ADD CONSTRAINT deposits_pkey PRIMARY KEY (deposit_id);


--
-- TOC entry 2891 (class 2606 OID 16579)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 2897 (class 2606 OID 16604)
-- Name: loans loans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_pkey PRIMARY KEY (loan_id);


--
-- TOC entry 2885 (class 2606 OID 16661)
-- Name: position position_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."position"
    ADD CONSTRAINT position_name_key UNIQUE (name);


--
-- TOC entry 2887 (class 2606 OID 16569)
-- Name: position position_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."position"
    ADD CONSTRAINT position_pkey PRIMARY KEY (position_id);


--
-- TOC entry 2893 (class 2606 OID 16594)
-- Name: transaction_type transaction_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction_type
    ADD CONSTRAINT transaction_type_pkey PRIMARY KEY (transaction_type_id);


--
-- TOC entry 2903 (class 2606 OID 16624)
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (transaction_id);


--
-- TOC entry 2889 (class 2606 OID 16574)
-- Name: work_experience work_experience_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_experience
    ADD CONSTRAINT work_experience_pkey PRIMARY KEY (id);


--
-- TOC entry 2911 (class 2606 OID 16615)
-- Name: account account_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.clients(client_id);


--
-- TOC entry 2916 (class 2606 OID 16655)
-- Name: deposit_details deposit_details_deposit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deposit_details
    ADD CONSTRAINT deposit_details_deposit_id_fkey FOREIGN KEY (deposit_id) REFERENCES public.deposits(deposit_id);


--
-- TOC entry 2915 (class 2606 OID 16650)
-- Name: deposit_details deposit_details_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deposit_details
    ADD CONSTRAINT deposit_details_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);


--
-- TOC entry 2914 (class 2606 OID 16640)
-- Name: deposits deposits_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deposits
    ADD CONSTRAINT deposits_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.clients(client_id);


--
-- TOC entry 2908 (class 2606 OID 16580)
-- Name: employees employees_position_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_position_id_fkey FOREIGN KEY (position_id) REFERENCES public."position"(position_id);


--
-- TOC entry 2909 (class 2606 OID 16585)
-- Name: employees employees_working_time_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_working_time_id_fkey FOREIGN KEY (working_time_id) REFERENCES public.work_experience(id);


--
-- TOC entry 2910 (class 2606 OID 16605)
-- Name: loans loans_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.clients(client_id);


--
-- TOC entry 2913 (class 2606 OID 16630)
-- Name: transactions transactions_account_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_account_id_fkey FOREIGN KEY (account_id) REFERENCES public.clients(client_id);


--
-- TOC entry 2912 (class 2606 OID 16625)
-- Name: transactions transactions_transaction_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_transaction_type_id_fkey FOREIGN KEY (transaction_type_id) REFERENCES public.transaction_type(transaction_type_id);


-- Completed on 2020-11-22 22:50:17

--
-- PostgreSQL database dump complete
--

