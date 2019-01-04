--
-- PostgreSQL database cluster dump
--

-- Started on 2018-09-23 13:59:01 BST

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--


-- For binary upgrade, must preserve pg_authid.oid
SELECT pg_catalog.binary_upgrade_set_next_pg_authid_oid('10'::pg_catalog.oid);

ALTER ROLE "jakobfischer" WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

-- For binary upgrade, must preserve pg_authid.oid
SELECT pg_catalog.binary_upgrade_set_next_pg_authid_oid('16388'::pg_catalog.oid);

CREATE ROLE "ubuntu";
ALTER ROLE "ubuntu" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;

-- For binary upgrade, must preserve pg_authid.oid
SELECT pg_catalog.binary_upgrade_set_next_pg_authid_oid('16385'::pg_catalog.oid);

CREATE ROLE "username";
ALTER ROLE "username" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;






--
-- Database creation
--

CREATE DATABASE "awad_development" WITH TEMPLATE = template0 OWNER = "jakobfischer";
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'awad_development';
CREATE DATABASE "awad_test" WITH TEMPLATE = template0 OWNER = "jakobfischer";
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'awad_test';
CREATE DATABASE "jakobfischer" WITH TEMPLATE = template0 OWNER = "username";
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'jakobfischer';
CREATE DATABASE "my_database_development" WITH TEMPLATE = template0 OWNER = "jakobfischer";
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'my_database_development';
CREATE DATABASE "my_database_test" WITH TEMPLATE = template0 OWNER = "jakobfischer";
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'my_database_test';
CREATE DATABASE "my_db_dev" WITH TEMPLATE = template0 OWNER = "ubuntu";
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'my_db_dev';
CREATE DATABASE "my_db_test" WITH TEMPLATE = template0 OWNER = "ubuntu";
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'my_db_test';
CREATE DATABASE "mydb" WITH TEMPLATE = template0 OWNER = "jakobfischer";
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'mydb';
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'postgres';
CREATE DATABASE "sample_development" WITH TEMPLATE = template0 OWNER = "jakobfischer";
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'sample_development';
CREATE DATABASE "sample_test" WITH TEMPLATE = template0 OWNER = "jakobfischer";
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'sample_test';
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'template1';
REVOKE CONNECT,TEMPORARY ON DATABASE "template1" FROM PUBLIC;
GRANT CONNECT ON DATABASE "template1" TO PUBLIC;
CREATE DATABASE "ubuntu" WITH TEMPLATE = template0 OWNER = "ubuntu";
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'ubuntu';
CREATE DATABASE "username" WITH TEMPLATE = template0 OWNER = "username";
-- For binary upgrade, set datfrozenxid and datminmxid.
UPDATE pg_catalog.pg_database SET datfrozenxid = '548', datminmxid = '1' WHERE datname = 'username';


-- Completed on 2018-09-23 13:59:01 BST

--
-- PostgreSQL database cluster dump complete
--

