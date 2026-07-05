DO
$$
BEGIN

IF NOT EXISTS (
    SELECT
    FROM pg_roles
    WHERE rolname='airflow'
) THEN

    CREATE ROLE airflow
        LOGIN
        PASSWORD 'airflow';

END IF;

IF NOT EXISTS (
    SELECT
    FROM pg_roles
    WHERE rolname='superset'
) THEN

    CREATE ROLE superset
        LOGIN
        PASSWORD 'superset';

END IF;

IF NOT EXISTS (
    SELECT
    FROM pg_roles
    WHERE rolname='retailops'
) THEN

    CREATE ROLE retailops
        LOGIN
        PASSWORD 'retailops';

END IF;

END
$$;

