CREATE TRIGGER mr_insert
AFTER INSERT ON accounts
FOR EACH ROW EXECUTE FUNCTION add_mr();

CREATE OR REPLACE FUNCTION add_mr() RETURNS trigger AS
$$
     BEGIN
          UPDATE accounts
          SET username = concat('Mr. ', username) WHERE accounts.acc_id = new.acc_id;
          RETURN NULL;
     END;
$$ LANGUAGE 'plpgsql';
