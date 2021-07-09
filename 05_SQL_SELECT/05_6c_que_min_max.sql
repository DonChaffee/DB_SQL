/* Aggregationen MIN/MAX */

USE boo;

-- Preis der teuersten/günstigsten Aktie?
/*
SELECT
	#MAX(price) AS "Max. Preis"
    MIN(price) AS "Min. PREIS"
FROM boo.ccc_list
;*/

# SELECT max(price) FROM boo.ccc_list;
# SELECT min(price) FROM boo.ccc_list;

-- WELCHE Aktie ist am teuersten/günstigsten ?
-- 1. Subquery
-- 2. ORDER BY .... ASC/DESC & LIMIT 1

/*
SELECT
	ticker SYM,
    c_name Unternehmen,
    price Aktienkurs
FROM boo.ccc_list
#WHERE price = (SELECT MAX(price) FROM boo.ccc_list)  # Subquery / Klammern!
WHERE price = (SELECT MIN(price) FROM boo.ccc_list) 
;*/

/*
SELECT
	ticker SYM,
    c_name Unternehmen,
    price Aktienkurs
FROM boo.ccc_list
ORDER BY price ASC
#ORDER BY price DESC
LIMIT 1;*/
