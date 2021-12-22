CREATE OR REPLACE FUNCTION get_invitation_link_from_given_subscriber_account(account_id INT) RETURNS TABLE (invitation_link VARCHAR )
    LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN QUERY (SELECT groups.invitation_link
            FROM groups
                     INNER JOIN account_group a on groups.group_id = a.group_id
            WHERE a.acc_id = account_id);
END;
$$;

