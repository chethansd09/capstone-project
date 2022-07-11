CREATE TABLE discount(    id varchar(255) NOT NULL primary key,    status bigint, price_discount DECIMAL(19, 2) NOT NULL, discount_group varchar(255) NOT NULL );

CREATE TABLE cart(user_id bigint NOT NULL primary key);


CREATE TABLE order_main(order_id bigint NOT NULL primary key,buyer_email varchar(255),buyer_name varchar(255),buyer_phone varchar(255),buyer_address varchar(255),order_amount DECIMAL(19,2) NOT NULL,order_status integer NOT NULL DEFAULT 0, create_time timestamp,update_time timestamp);

CREATE TABLE product_category(    category_id int NOT NULL primary key,    category_name varchar(255) ,    category_type int,    create_time timestamp ,    update_time timestamp );

CREATE TABLE product_in_order(    id bigint NOT NULL primary key,    category_type int NOT NULL,    count int,    product_description varchar(255) NOT NULL,    product_icon varchar(1000),    product_id varchar(255),    product_name varchar(255),    product_price DECIMAL(19,2) NOT NULL,    product_stock int,    cart_user_id bigint,    order_id bigint);

CREATE TABLE product_info(    product_id varchar(255) NOT NULL primary key,    category_type int DEFAULT 0,    create_time timestamp,    product_description varchar(255),    product_icon varchar(255),    product_name varchar(255) NOT NULL,    product_price DECIMAL(19,2) NOT NULL,    product_status int DEFAULT 0,    product_stock int NOT NULL,    update_time timestamp );

CREATE TABLE users(    id bigint NOT NULL primary key,    active boolean NOT NULL,    address varchar(255),    email varchar(255) ,    name varchar(255),    password varchar(255),    phone varchar(255) ,    role varchar(255)     );

 CREATE TABLE wishlist(    id bigint NOT NULL primary key,    created_date timestamp ,    user_id bigint,    product_id varchar(255));

INSERT INTO product_category VALUES (2147483641, 'Idols & Figurines', 0, '2022-06-23 23:03:26', '2022-06-23 23:03:26');
INSERT INTO product_category VALUES (2147483642, 'Wall Sculptures', 1, '2022-06-23 23:03:26', '2022-06-23 23:03:26');
INSERT INTO product_category VALUES (2147483643, 'Paintings', 2, '2022-06-23 23:03:26', '2022-06-23 23:03:26');
INSERT INTO product_category VALUES (2147483644, 'Artificial Flora', 3, '2022-06-23 23:03:26', '2022-06-23 23:03:26');
INSERT INTO product_info VALUES ('IF001', 0, '2022-06-23 23:03:26', 'Showpieces Metal Table Top Gold Ornament for Showcase', 'https://m.media-amazon.com/images/I/719t6YQh9WL._SX679_.jpg', 'Space Gingko Leaf', 50.00, 0, 22, '2022-06-23 23:03:26');
INSERT INTO product_info VALUES ('IF002', 0, '2022-06-23 23:03:26', 'Feng Shui Items for Positive Energy', 'https://m.media-amazon.com/images/I/91qV1v1Vh5S._SX679_.jpg', 'Seven Chakra Crystal Tree', 65.00, 0, 60, '2022-06-23 23:03:26');
INSERT INTO product_info VALUES ('IF003', 0, '2022-06-23 23:03:26', 'Statue Showpiece for Home Decor Diwali Decoration and Gifting', 'https://m.media-amazon.com/images/I/91FwdCVfcJL._SX679_.jpg', 'Polyresin Sitting Buddha Idol', 45.00, 0, 40, '2022-06-23 23:03:26');
INSERT INTO product_info VALUES ('WS001', 1, '2022-06-23 23:03:26', 'Handmade Hand-Painted Wall Hanging', 'https://m.media-amazon.com/images/I/614huT-aHoL._UX679_.jpg', 'Hanging Fish for Room Decoration', 53.00, 0, 22, '2022-06-23 23:03:26');
INSERT INTO product_info VALUES ('WS002', 1, '2022-06-23 23:03:26', 'Multi Color Wall Arts for Home', 'https://m.media-amazon.com/images/I/71VP2phVneL._SX679_.jpg', 'Metal Wall Decor Wall Hanging', 85.00, 0, 10,' 2022-06-23 23:03:26');
INSERT INTO product_info VALUES ('WS003', 1, '2022-06-23 23:03:26', 'Metal Lord Ganesha in Red Dhoti on Green Leaf Wall Hanging', 'https://m.media-amazon.com/images/I/71aXRJA2gEL._SX522_.jpg', 'Metal Lord Ganesha', 45.00, 0, 50, '2022-06-23 23:03:26');
INSERT INTO product_info VALUES ('PA001', 2, '2022-06-23 23:03:26', 'Fine Art Home Decor Metal Art & Craft Bird Ring Small with Led Light', 'https://m.media-amazon.com/images/I/81+mbR9nw-L._SX679_.jpg', 'Home Decor Metal Art ', 73.00, 0, 45, '2022-06-23 23:03:26');
INSERT INTO product_info VALUES ('PA002', 2, '2022-06-23 23:03:26', 'World Decor Led Couple Peacock Birds Metal Wall Art - Big, Multicolour', 'https://m.media-amazon.com/images/I/61LsEgD7uTL._SX679_.jpg', 'Led Couple Peacock Birds', 57.00, 0, 53, '2022-06-23 23:03:26');
INSERT INTO product_info VALUES ('PA003', 2, '2022-06-23 23:03:26', 'Fine Art Home Decor Metal & MDF Art & Craft Bike Panel', 'https://m.media-amazon.com/images/I/81wdvBLTBkL._SX679_.jpg', 'Home Decor Metal & MDF Art ', 95.00, 0, 70, '2022-06-23 23:03:26');
INSERT INTO product_info VALUES ('AF001', 3, '2022-06-23 23:03:26', 'unique flower- Fresh Flowers Bouquet Arrangement Indoor Plant-orchid bouquet', 'https://images-eu.ssl-images-amazon.com/images/I/51pGF656WoL._SX300_SY300_QL70_FMwebp_.jpg', 'Fresh Flowers Bouquet  ', 90.00, 0, 39, '2022-06-23 23:03:26');
INSERT INTO product_info VALUES ('AF002', 3, '2022-06-23 23:03:26', 'Blooming Floret Artificial Cherry Orchid Flower Bunch', 'https://m.media-amazon.com/images/I/81MCELCKR4L._SY879_.jpg', 'Artificial Cherry Orchid Flower', 76.00, 0, 75, '2022-06-23 23:03:26');
INSERT INTO product_info VALUES ('AF003', 3, '2022-06-23 23:03:26', 'Diwali Wedding Party Garden Craft Wall Home Door Decoration Theme', 'https://m.media-amazon.com/images/I/715VQFzLwRL._SX679_.jpg', 'Artificial Marigold Flower ', 82.00, 0, 20, '2022-06-23 23:03:26');

INSERT INTO users VALUES (2147483645, true, 'Plot 2, Shivaji Nagar, Benagluru', 'admin@c7g3.com', 'Admin', '$2a$10$LiBwO43TpKU0sZgCxNkWJueq2lqxoUBsX2Wclzk8JQ3Ejb9MWu2Xy', '1234567890', 'ROLE_MANAGER');