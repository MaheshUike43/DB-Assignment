CREATE TABLE product_category (
    category_id INT NOT NULL,
    category_name VARCHAR(255),
    category_desc TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    PRIMARY KEY (category_id)
);

CREATE TABLE product_inventory (
    inventory_id INT NOT NULL,
    quantity INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    PRIMARY KEY (inventory_id)
);

CREATE TABLE discount (
    discount_id INT NOT NULL,
    discount_name VARCHAR(255),
    discount_desc TEXT,
    discount_percent DECIMAL,
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    PRIMARY KEY (discount_id)
);

CREATE TABLE product (
    product_id INT NOT NULL,
    product_name VARCHAR(255),
    product_desc TEXT,
    SKU VARCHAR(255),
    category_id INT,
    FOREIGN KEY (category_id)
        REFERENCES product_category (category_id),
    inventory_id INT,
    FOREIGN KEY (inventory_id)
        REFERENCES product_inventory (inventory_id),
    price DECIMAL,
    discount_id INT,
    FOREIGN KEY (discount_id)
        REFERENCES discount (discount_id),
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    PRIMARY KEY (product_id)
);
