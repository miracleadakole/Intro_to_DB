

USE alx_book_store;


CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
);

-----------------------------------------------
-- TABLE: books
-----------------------------------------------
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    published_year INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-----------------------------------------------
-- TABLE: customers
-----------------------------------------------
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    phone VARCHAR(50),
    address TEXT
);

-----------------------------------------------
-- TABLE: orders
-----------------------------------------------
CREATE TABLE Orders (
    order_id INT  PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-----------------------------------------------
-- TABLE: order_details
-----------------------------------------------
CREATE TABLE Order_details (
    orderdetailid INT  PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DECIMAL(10,2),
);
