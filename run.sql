-- Function test

SELECT get_invitation_link_from_given_subscriber_account(1)
    end;
$$ LANGUAGE plpgsql;

--procedure
CALL create_accounts_temporary_table_for_tests('_temp_table');

select * from accounts_temp_table;

--trigger
insert into accounts(acc_id, username) VALUES (9, 'Green');

SELECT * from accounts
