GRANT ALL PRIVILEGES ON *.* TO 'test'@'localhost' IDENTIFIED BY 'test';
CREATE database IF NOT EXISTS e_commerce;

CREATE TABLE IF NOT EXISTS shop(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
)ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS category(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
)ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS goods(
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  price VARCHAR(255) NOT NULL,
  status VARCHAR(255) NOT NULL,
  shop_id INT NOT NULL,
  category_id INT NOT NULL,
  CONSTRAINT goods_shop_fk
  FOREIGN KEY (shop_id) REFERENCES shop(id),
  CONSTRAINT goods_category_fk
  FOREIGN KEY (category_id) REFERENCES category(id),
  PRIMARY KEY (id)
)ENGINE=INNODB;

INSERT INTO shop (name) values ('Shop_1');
INSERT INTO shop (name) values ('Shop_2');
INSERT INTO category (name) values ('Category_1');
INSERT INTO category (name) values ('Category_2');
INSERT INTO category (name) values ('Category_3');
INSERT INTO category (name) values ('Category_4');
INSERT INTO goods (title, price, status, shop_id, category_id)
VALUES ('goods_1Category_1', 20, 'Available', 1, 1);
INSERT INTO goods (title, price, status, shop_id, category_id)
VALUES ('goods_2Category_1', 25, 'Absent', 1, 1);
INSERT INTO goods (title, price, status, shop_id, category_id)
VALUES ('goods_3Category_1', 10, 'Expected', 1, 1);
INSERT INTO goods (title, price, status, shop_id, category_id)
VALUES ('goods_1Category_2', 15, 'Available', 1, 2);
INSERT INTO goods (title, price, status, shop_id, category_id)
VALUES ('goods_2Category_2', 30, 'Expected', 1, 2);
INSERT INTO goods (title, price, status, shop_id, category_id)
VALUES ('goods_3Category_2', 35, 'Absent', 1, 2);

INSERT INTO goods (title, price, status, shop_id, category_id)
VALUES ('goods_1Category_3', 10, 'Absent', 2, 3);
INSERT INTO goods (title, price, status, shop_id, category_id)
VALUES ('goods_2Category_3', 25, 'Available', 2, 3);
INSERT INTO goods (title, price, status, shop_id, category_id)
VALUES ('goods_3Category_3', 20, 'Expected', 2, 3);
INSERT INTO goods (title, price, status, shop_id, category_id)
VALUES ('goods_1Category_4', 5, 'Expected', 2, 4);
INSERT INTO goods (title, price, status, shop_id, category_id)
VALUES ('goods_2Category_4', 40, 'Available', 2, 4);
INSERT INTO goods (title, price, status, shop_id, category_id)
VALUES ('goods_3Category_4', 45, 'Absent', 2, 4);








