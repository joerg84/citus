CREATE OR REPLACE FUNCTION worker_fetch_foreign_file(text, text, bigint, text[], integer[])
    RETURNS void
    LANGUAGE C STRICT
    AS 'MODULE_PATHNAME', $$worker_fetch_foreign_file$$;
COMMENT ON FUNCTION worker_fetch_foreign_file(text, text, bigint, text[], integer[])
    IS 'fetch foreign file from remote node and apply file';

CREATE OR REPLACE FUNCTION worker_fetch_regular_table(text, text, bigint, text[], integer[])
    RETURNS void
    LANGUAGE C STRICT
    AS 'MODULE_PATHNAME', $$worker_fetch_regular_table$$;
COMMENT ON FUNCTION worker_fetch_regular_table(text, text, bigint, text[], integer[])
    IS 'fetch PostgreSQL table from remote node';
