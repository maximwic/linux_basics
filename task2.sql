DELIMITER //
CREATE PROCEDURE mln_users()
BEGIN
	DECLARE i INT DEFAULT 0;
	WHILE i<1000000 DO
		INSERT INTO users(name, birthday_at, created_at, updated_at) VALUES
		(CONCAT('auser', i), '1990-10-05', NOW(), NOW());
		SET i=i+1;
	END WHILE;
END

