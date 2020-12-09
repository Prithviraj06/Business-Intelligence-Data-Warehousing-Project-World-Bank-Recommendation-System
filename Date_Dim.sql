CREATE TABLE IF NOT EXISTS datedim  (
    date_id INT NOT NULL auto_increment,
    fulldate date,
    monthnumber int,
    monthname varchar(10),
    year    int,
    quarter tinyint,
    PRIMARY KEY(date_id)
) ENGINE=InnoDB AUTO_INCREMENT=1;


delimiter //

DROP PROCEDURE IF EXISTS datedimbuild;
CREATE PROCEDURE datedimbuild (p_start_date DATE, p_end_date DATE)
BEGIN
    DECLARE v_full_date DATE;

    DELETE FROM datedim;

    SET v_full_date = p_start_date;
    WHILE v_full_date < p_end_date DO

        INSERT INTO datedim (
            fulldate ,
            monthnumber,
            monthname,
            year,
            quarter
        ) VALUES (
            v_full_date,
            MONTH(v_full_date),
            MONTHNAME(v_full_date),
            YEAR(v_full_date),
            QUARTER(v_full_date)
        );

        SET v_full_date = DATE_ADD(v_full_date, INTERVAL 1 DAY);
    END WHILE;
END;

call datedimbuild ("1947-01-01", "2022-12-31");

select * from datedim;