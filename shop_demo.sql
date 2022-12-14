CREATE TABLE table_products
(
    product_id   INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name         TEXT NOT NULL,
    manufacturer TEXT NOT NULL,
    price        INT  NOT NULL DEFAULT 0
);

INSERT INTO shop_demo.table_products (name, manufacturer, price)
VALUES ('PC_1', 'Apple', 1000),
       ('PC_F', 'Asus', 100),
       ('Pad', 'Apple', 500),
       ('Pad new', 'HP', 230),
       ('Phone', 'Apple', 2000),
       ('Phone', 'HP', 100);

SELECT name, AVG(price)
FROM table_products
GROUP BY name;

SELECT COUNT(*)
FROM table_products
WHERE manufacturer = 'Apple';

SELECT manufacturer
FROM table_products
WHERE price > 50
GROUP BY manufacturer
HAVING COUNT(*) > 1;

DELIMITER |
CREATE TRIGGER trigger_deny_delete_any
    BEFORE DELETE
    ON table_products
    FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '90000';
END |

