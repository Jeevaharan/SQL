CREATE TABLE MV_DEMO
(
  ID INT,
  NAME VARCHAR(200)
);

INSERT INTO MV_DEMO (SELECT 2, "ABC" );
INSERT INTO MV_DEMO (SELECT 2, "DEF" );
INSERT INTO MV_DEMO (SELECT 3, "GHI" );
INSERT INTO MV_DEMO (SELECT 4, "JKL" );
INSERT INTO MV_DEMO (SELECT 5, "MNO" );
DROP TABLE MV_DEMO;

SELECT * FROM MV_DEMO;

CREATE VIEW  VIEW_DEMO AS
SELECT ID,COUNT(ID),ID*100 AS SUMID FROM MV_DEMO GROUP BY ID HAVING SUMID>250;

SELECT * FROM VIEW_DEMO;

CREATE MATERIALIZED VIEW MV AS 
SELECT ID,COUNT(ID),ID*100 AS SUMID FROM MV_DEMO GROUP BY ID HAVING SUMID>250;
