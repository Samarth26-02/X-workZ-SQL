create database Assesment3;
//database Assesment3
use Assesment3;
CREATE TABLE student_info (
    student_id INT,
    student_name VARCHAR(30),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(20),
    gpa FLOAT,
    city VARCHAR(20),
    scholarship_status VARCHAR(10)
);

CREATE TABLE product_info (
    product_id INT,
    product_name VARCHAR(30),
    category VARCHAR(20),
    price DECIMAL(10,2),
    stock INT,
    brand VARCHAR(20),
    rating FLOAT,
    availability VARCHAR(10)
);

CREATE TABLE book_info (
    book_id INT,
    title VARCHAR(50),
    author VARCHAR(30),
    genre VARCHAR(20),
    price DECIMAL(8,2),
    pages INT,
    publisher VARCHAR(30),
    language VARCHAR(15)
);

//Inserting 20 values
INSERT INTO student_info VALUES
(1, 'Aarav', 20, 'Male', 'CS', 8.1, 'Mumbai', 'Yes'),
(2, 'Priya', 21, 'Female', 'IT', 7.8, 'Delhi', 'No'),
(3, 'Rohan', 22, 'Male', 'ECE', 8.5, 'Bangalore', 'Yes'),
(4, 'Sneha', 20, 'Female', 'MECH', 6.9, 'Chennai', 'No'),
(5, 'Varun', 23, 'Male', 'EEE', 7.2, 'Pune', 'No'),
(6, 'Nisha', 21, 'Female', 'CS', 9.0, 'Hyderabad', 'Yes'),
(7, 'Karan', 24, 'Male', 'IT', 6.5, 'Kolkata', 'No'),
(8, 'Divya', 22, 'Female', 'ECE', 7.5, 'Delhi', 'Yes'),
(9, 'Yash', 20, 'Male', 'MECH', 8.2, 'Mumbai', 'No'),
(10, 'Megha', 23, 'Female', 'EEE', 7.1, 'Chennai', 'Yes'),
(11, 'Ritika', 21, 'Female', 'CS', 8.3, 'Bangalore', 'Yes'),
(12, 'Raj', 22, 'Male', 'IT', 6.9, 'Hyderabad', 'No'),
(13, 'Ananya', 24, 'Female', 'ECE', 7.9, 'Delhi', 'Yes'),
(14, 'Tushar', 20, 'Male', 'MECH', 7.0, 'Kolkata', 'No'),
(15, 'Pooja', 21, 'Female', 'EEE', 8.7, 'Pune', 'Yes'),
(16, 'Harsh', 23, 'Male', 'CS', 9.1, 'Mumbai', 'Yes'),
(17, 'Isha', 22, 'Female', 'IT', 7.4, 'Chennai', 'No'),
(18, 'Sahil', 20, 'Male', 'ECE', 8.0, 'Delhi', 'Yes'),
(19, 'Neha', 21, 'Female', 'MECH', 6.8, 'Hyderabad', 'No'),
(20, 'Ravi', 22, 'Male', 'EEE', 7.6, 'Bangalore', 'Yes');

INSERT INTO product_info VALUES
(1, 'Laptop', 'Electronics', 55000.00, 12, 'Dell', 4.3, 'Yes'),
(2, 'Phone', 'Electronics', 35000.00, 5, 'Samsung', 4.1, 'Yes'),
(3, 'TV', 'Appliances', 42000.00, 7, 'Sony', 4.5, 'Yes'),
(4, 'Washing Machine', 'Appliances', 30000.00, 8, 'LG', 4.2, 'Yes'),
(5, 'Mixer', 'Kitchen', 5000.00, 15, 'Philips', 4.0, 'Yes'),
(6, 'Oven', 'Kitchen', 12000.00, 3, 'Samsung', 3.9, 'No'),
(7, 'Chair', 'Furniture', 2500.00, 30, 'Nilkamal', 3.7, 'Yes'),
(8, 'Table', 'Furniture', 4000.00, 20, 'Godrej', 4.1, 'Yes'),
(9, 'Fan', 'Appliances', 2500.00, 25, 'Havells', 4.0, 'Yes'),
(10, 'Router', 'Electronics', 2500.00, 10, 'TP-Link', 3.9, 'Yes'),
(11, 'Printer', 'Electronics', 6500.00, 6, 'HP', 4.0, 'Yes'),
(12, 'Notebook', 'Stationery', 50.00, 100, 'Classmate', 4.6, 'Yes'),
(13, 'Pen', 'Stationery', 20.00, 200, 'Cello', 4.3, 'Yes'),
(14, 'Headphones', 'Electronics', 3000.00, 8, 'Boat', 4.4, 'Yes'),
(15, 'Sofa', 'Furniture', 25000.00, 4, 'Urban Ladder', 4.5, 'Yes'),
(16, 'Water Bottle', 'Kitchen', 300.00, 50, 'Milton', 4.2, 'Yes'),
(17, 'Air Conditioner', 'Appliances', 45000.00, 6, 'Voltas', 4.4, 'Yes'),
(18, 'Tablet', 'Electronics', 28000.00, 5, 'Lenovo', 4.1, 'Yes'),
(19, 'Lamp', 'Furniture', 1200.00, 20, 'Philips', 4.0, 'Yes'),
(20, 'Speaker', 'Electronics', 5500.00, 9, 'JBL', 4.5, 'Yes');

INSERT INTO book_info VALUES
(1, 'The Alchemist', 'Paulo Coelho', 'Fiction', 300.00, 197, 'HarperOne', 'English'),
(2, '1984', 'George Orwell', 'Dystopian', 250.00, 328, 'Penguin', 'English'),
(3, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 350.00, 281, 'Arrow', 'English'),
(4, 'Wings of Fire', 'A. P. J. Abdul Kalam', 'Biography', 280.00, 180, 'Universities Press', 'English'),
(5, 'The Monk Who Sold His Ferrari', 'Robin Sharma', 'Self-help', 320.00, 198, 'Jaico', 'English'),
(6, 'Sapiens', 'Yuval Noah Harari', 'History', 450.00, 498, 'Penguin', 'English'),
(7, 'Ikigai', 'Héctor García', 'Philosophy', 300.00, 208, 'Penguin', 'English'),
(8, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 400.00, 336, 'Warner Books', 'English'),
(9, 'Atomic Habits', 'James Clear', 'Self-help', 420.00, 320, 'Penguin', 'English'),
(10, 'The Secret', 'Rhonda Byrne', 'Spiritual', 350.00, 216, 'Atria Books', 'English'),
(11, 'Think and Grow Rich', 'Napoleon Hill', 'Finance', 300.00, 238, 'Fingerprint', 'English'),
(12, 'Digital Fortress', 'Dan Brown', 'Thriller', 370.00, 384, 'St. Martin’s Press', 'English'),
(13, 'Inferno', 'Dan Brown', 'Thriller', 399.00, 463, 'Doubleday', 'English'),
(14, 'The Da Vinci Code', 'Dan Brown', 'Mystery', 450.00, 489, 'Anchor', 'English'),
(15, 'Angels and Demons', 'Dan Brown', 'Thriller', 420.00, 572, 'Pocket Books', 'English'),
(16, 'The Power of Habit', 'Charles Duhigg', 'Self-help', 410.00, 371, 'Random House', 'English'),
(17, 'Becoming', 'Michelle Obama', 'Biography', 500.00, 448, 'Crown', 'English'),
(18, 'Steve Jobs', 'Walter Isaacson', 'Biography', 550.00, 656, 'Simon & Schuster', 'English'),
(19, 'Brief Answers to the Big Questions', 'Stephen Hawking', 'Science', 350.00, 256, 'Bantam', 'English'),
(20, 'Life’s Amazing Secrets', 'Gaur Gopal Das', 'Motivational', 299.00, 232, 'Penguin', 'English');


UPDATE student_info SET gpa = 9.5 WHERE department = 'CS' AND age BETWEEN 20 AND 22;
UPDATE student_info SET city = 'Bangalore' WHERE department = 'EEE' OR age = 22;
UPDATE student_info SET scholarship_status = 'No' WHERE student_id IN (3, 6, 9);
UPDATE student_info SET scholarship_status = 'Yes' WHERE student_id NOT IN (2, 4, 6);
UPDATE student_info SET city = 'Hyderabad' WHERE student_id NOT BETWEEN 5 AND 10;
UPDATE student_info SET scholarship_status = 'Yes' WHERE age BETWEEN 20 AND 21;

UPDATE product_info SET rating = 4.9 WHERE brand IN ('Samsung', 'Boat');
UPDATE product_info SET rating = 4.2 WHERE brand NOT IN ('Sony', 'Apple');
UPDATE product_info SET stock = 50 WHERE price BETWEEN 1000 AND 3000;
UPDATE product_info SET stock = 0 WHERE product_id NOT BETWEEN 5 AND 15;
UPDATE product_info SET price = 999 WHERE brand = 'boAt' AND rating > 4.0;
UPDATE product_info SET price = 1200 WHERE rating BETWEEN 3.5 AND 4.0;
UPDATE product_info SET stock = 25 WHERE rating < 3.0 OR price > 4000;

UPDATE book_info SET language = 'Hindi' WHERE book_id NOT IN (1,2,3,4);
UPDATE book_info SET language = 'Kannada' WHERE book_id IN (5,6,7);
UPDATE book_info SET price = 499 WHERE pages BETWEEN 250 AND 400;
UPDATE book_info SET price = 599 WHERE pages NOT BETWEEN 300 AND 450;
UPDATE book_info SET author = 'Premchand' WHERE language = 'Hindi' AND pages > 200;
UPDATE book_info SET pages = 500 WHERE book_id NOT BETWEEN 12 AND 16;



DELETE FROM student_info WHERE gpa < 6.5;
DELETE FROM product_info WHERE stock < 5 OR availability = 'No';
DELETE FROM book_info WHERE book_id IN (3,5,7);
DELETE FROM book_info WHERE book_id NOT IN (1,2,4,6,8,10);
DELETE FROM product_info WHERE price BETWEEN 5000 AND 10000;
DELETE FROM student_info WHERE student_id NOT BETWEEN 10 AND 20;


SELECT * FROM student_info WHERE department = 'CS';
SELECT * FROM product_info WHERE category = 'Electronics';
SELECT * FROM book_info WHERE genre = 'Thriller';


SELECT * FROM student_info WHERE department = 'IT' AND gpa > 8.0;
SELECT * FROM product_info WHERE brand IN ('Sony', 'LG', 'HP');
SELECT * FROM book_info WHERE pages BETWEEN 300 AND 500;
SELECT * FROM book_info WHERE book_id NOT BETWEEN 5 AND 10;

select * from student_info;
select count(*) from student_info;

select sum(pages) from book_info;

select max(pages) as max_pages from book_info;

select min(pages) as min_pages from book_info;

select avg(pages) as avg_pages from book_info;

select student_name,max(age) as max_age from student_info 
where department='ECE';

select student_name, max(age) as max_age from student_info
group by department having max_age >21;

select * from student_info;


