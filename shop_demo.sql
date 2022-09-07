CREATE TABLE table_products (
    product_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    manufacturer TEXT NOT NULL,
    price INT NOT NULL DEFAULT 0
);

INSERT INTO shop_demo.table_products (name, manufacturer, price)
VALUES ('PC_1', 'Apple', 1000),
       ('PC_F', 'Asus', 100),
       ('Pad', 'Apple', 500),
       ('Pad new', 'HP', 230),
       ('Phone', 'Apple', 2000);

