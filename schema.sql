CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(35),
    state VARCHAR(25)
);

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL,
    payment_date DATE,
    payment_status VARCHAR(55),
    CONSTRAINT payments_order_id_fkey 
        FOREIGN KEY (order_id) 
        REFERENCES sales(order_id)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(45) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    cogs DECIMAL(10,2),
    category VARCHAR(25),
    brand VARCHAR(25)
);

CREATE TABLE sales (
    order_id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price_per_unit DECIMAL(10,2) NOT NULL,
    order_status VARCHAR(25),

    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

CREATE TABLE shippings (
    shipping_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL,
    shipping_date DATE,
    return_date DATE,
    shipping_provider VARCHAR(55),
    delivery_status VARCHAR(55),

    CONSTRAINT fk_order
        FOREIGN KEY (order_id)
        REFERENCES sales(order_id)
);
