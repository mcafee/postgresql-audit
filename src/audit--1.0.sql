/* postgresql-audit/audit--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION audit" to load this file.\quit

-- FIXME: Temporarily, enable the pgaudit functions. We may need them.
CREATE FUNCTION pgaudit_ddl_command_end()
	RETURNS event_trigger
	LANGUAGE C
	AS 'MODULE_PATHNAME', 'pgaudit_ddl_command_end';

CREATE EVENT TRIGGER pgaudit_ddl_command_end
	ON ddl_command_end
	EXECUTE PROCEDURE pgaudit_ddl_command_end();

CREATE FUNCTION pgaudit_sql_drop()
	RETURNS event_trigger
	LANGUAGE C
	AS 'MODULE_PATHNAME', 'pgaudit_sql_drop';

CREATE EVENT TRIGGER pgaudit_sql_drop
	ON sql_drop
	EXECUTE PROCEDURE pgaudit_sql_drop();
