CREATE
OR REPLACE PROCEDURE create_accounts_temporary_table_for_tests(suffix varchar)
LANGUAGE 'plpgsql'
AS $$
BEGIN
EXECUTE 'CREATE TABLE accounts' || quote_ident(suffix) || ' as (select * from accounts);';
END;
$$;
