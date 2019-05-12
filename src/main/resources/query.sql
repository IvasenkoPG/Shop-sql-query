
INSERT INTO goods (title, price, status, shop_id, category_id)
VALUES ('goods_4Category_4', 50, 'Available', 2, 4);

UPDATE goods SET price = 100 WHERE title = 'goods_1Category_1';
UPDATE goods SET status = 'Expected' WHERE id = 11;


SELECT shop.name, g.title, g.price, g.status
FROM shop JOIN goods g on shop.id = g.shop_id WHERE shop.name = 'Shop_1';
SELECT shop.name, g.title, g.price, g.status
FROM shop JOIN goods g on shop.id = g.shop_id WHERE shop.name = 'Shop_1' ORDER BY g.price +0;
SELECT shop.name, g.title, g.price, g.status
FROM shop JOIN goods g on shop.id = g.shop_id WHERE shop.name = 'Shop_1' ORDER BY g.title;



SELECT shop.name, g.title, g.price, g.status
FROM shop JOIN goods g on shop.id = g.shop_id WHERE g.status = 'Absent';
SELECT shop.name, g.title, g.price, g.status
FROM shop JOIN goods g on shop.id = g.shop_id WHERE g.status = 'Absent' ORDER BY g.price;
SELECT shop.name, g.title, g.price, g.status
FROM shop JOIN goods g on shop.id = g.shop_id WHERE g.status = 'Absent' ORDER BY g.title;



SELECT s.name, g.title, g.price, g.status
FROM goods g JOIN shop s on g.shop_id = s.id
WHERE title LIKE '%z%' AND title LIKE REVERSE('%z%')
   OR s.name LIKE '%p_2%' AND s.name LIKE REVERSE('%2_p%') LIMIT 10;