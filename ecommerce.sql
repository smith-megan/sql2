CREATE TABLE shop_user(
  shop_user_id SERIAL PRIMARY KEY,
  shop_user_email VARCHAR(30),
  shop_user_name VARCHAR(10)
);

CREATE TABLE cart(
  cart_id SERIAL PRIMARY KEY,
  quantity INT,
   product_id INT NOT NULL REFERENCES product(product_id),
   shop_user_id INT NOT NULL REFERENCES shop_user(shop_user_id)
);

CREATE TABLE product(
  product_id SERIAL PRIMARY KEY,
  product_price DECIMAL(5,2),
  product_name VARCHAR(20)
);