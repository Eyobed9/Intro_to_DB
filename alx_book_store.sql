CREATE DATABASE IF NOT EXISTS Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE,
    price DOUBLE,
    publication_date DATE,
);

CREATE DATABASE IF NOT EXISTS Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
)

CREATE DATABASE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT,
)

CREATE DATABASE IF NOT EXISTS Orders (
    order_id INT PRIMARY KEY,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
)

CREATE DATABASE IF NOT EXISTS Order_Details (
    order detailid INT PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    book_id (Foreign Key referencing Books table),
    quantity DOUBLE
)