create database Assesments2;


use  Assesments2;
CREATE TABLE airlines_info (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(100),
    founded_year INT,
    headquarters VARCHAR(100),
    fleet_size INT
);

CREATE TABLE country_info (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100),
    continent VARCHAR(50),
    population BIGINT,
    currency VARCHAR(50)
);

CREATE TABLE state_info (
    state_id INT PRIMARY KEY,
    state_name VARCHAR(100),
    country_id INT,
    population BIGINT,
    area_km2 FLOAT
);

ALTER TABLE airlines_info ADD ceo_name VARCHAR(100);
ALTER TABLE airlines_info ADD is_active BOOLEAN;
ALTER TABLE airlines_info ADD rating FLOAT;

ALTER TABLE country_info ADD capital VARCHAR(100);
ALTER TABLE country_info ADD gdp FLOAT;
ALTER TABLE country_info ADD language VARCHAR(50);

ALTER TABLE state_info ADD capital VARCHAR(100);
ALTER TABLE state_info ADD literacy_rate FLOAT;
ALTER TABLE state_info ADD official_language VARCHAR(50);

ALTER TABLE airlines_info RENAME COLUMN ceo_name TO chief_exec_officer;
ALTER TABLE airlines_info RENAME COLUMN is_active TO operational_status;
ALTER TABLE airlines_info RENAME COLUMN rating TO star_rating;

ALTER TABLE country_info RENAME COLUMN capital TO capital_city;
ALTER TABLE country_info RENAME COLUMN gdp TO gdp_billion_usd;
ALTER TABLE country_info RENAME COLUMN language TO official_language;

ALTER TABLE state_info RENAME COLUMN capital TO capital_city;
ALTER TABLE state_info RENAME COLUMN literacy_rate TO education_rate;
ALTER TABLE state_info RENAME COLUMN official_language TO language_spoken;

INSERT INTO airlines_info VALUES
(1, 'Delta Airlines', 1929, 'Atlanta, USA', 900, 'Ed Bastian', TRUE, 4.5),
(2, 'Qatar Airways', 1993, 'Doha, Qatar', 230, 'Akbar Al Baker', TRUE, 4.8),
(3, 'Emirates', 1985, 'Dubai, UAE', 270, 'Tim Clark', TRUE, 4.7),
(4, 'Air India', 1932, 'New Delhi, India', 120, 'Campbell Wilson', TRUE, 3.9),
(5, 'Lufthansa', 1953, 'Cologne, Germany', 300, 'Carsten Spohr', TRUE, 4.2),
(6, 'Singapore Airlines', 1947, 'Singapore', 150, 'Goh Choon Phong', TRUE, 4.9),
(7, 'British Airways', 1974, 'London, UK', 280, 'Sean Doyle', TRUE, 4.3),
(8, 'American Airlines', 1930, 'Texas, USA', 940, 'Robert Isom', TRUE, 4.1),
(9, 'Turkish Airlines', 1933, 'Istanbul, Turkey', 370, 'Ahmet Bolat', TRUE, 4.4),
(10, 'Air France', 1933, 'Paris, France', 210, 'Anne Rigail', TRUE, 4.0),
(11, 'KLM', 1919, 'Amsterdam, Netherlands', 170, 'Marjan Rintel', TRUE, 4.2),
(12, 'ANA', 1952, 'Tokyo, Japan', 240, 'Shinya Katanozaka', TRUE, 4.6),
(13, 'Ethiopian Airlines', 1945, 'Addis Ababa, Ethiopia', 140, 'Mesfin Tasew', TRUE, 4.1),
(14, 'Cathay Pacific', 1946, 'Hong Kong', 130, 'Ronald Lam', TRUE, 4.3),
(15, 'Qantas', 1920, 'Sydney, Australia', 150, 'Vanessa Hudson', TRUE, 4.5),
(16, 'Southwest Airlines', 1967, 'Texas, USA', 750, 'Robert Jordan', TRUE, 4.0),
(17, 'Ryanair', 1984, 'Dublin, Ireland', 500, 'Michael O’Leary', TRUE, 3.8),
(18, 'Jet Airways', 1992, 'Mumbai, India', 85, 'Sanjiv Kapoor', FALSE, 3.7),
(19, 'IndiGo', 2006, 'Gurgaon, India', 300, 'Pieter Elbers', TRUE, 4.0),
(20, 'SpiceJet', 2005, 'Gurgaon, India', 100, 'Ajay Singh', TRUE, 3.5);

INSERT INTO country_info VALUES
(1, 'India', 'Asia', 1400000000, 'INR', 'New Delhi', 3100.50, 'Hindi'),
(2, 'USA', 'North America', 330000000, 'USD', 'Washington D.C.', 23000.75, 'English'),
(3, 'Germany', 'Europe', 83000000, 'EUR', 'Berlin', 4800.00, 'German'),
(4, 'Japan', 'Asia', 125000000, 'JPY', 'Tokyo', 5400.00, 'Japanese'),
(5, 'Australia', 'Oceania', 26000000, 'AUD', 'Canberra', 1500.25, 'English'),
(6, 'UK', 'Europe', 67000000, 'GBP', 'London', 3200.60, 'English'),
(7, 'France', 'Europe', 67000000, 'EUR', 'Paris', 3000.45, 'French'),
(8, 'Netherlands', 'Europe', 17000000, 'EUR', 'Amsterdam', 900.00, 'Dutch'),
(9, 'Canada', 'North America', 38000000, 'CAD', 'Ottawa', 2000.55, 'English'),
(10, 'Brazil', 'South America', 212000000, 'BRL', 'Brasilia', 2100.75, 'Portuguese'),
(11, 'Qatar', 'Asia', 2900000, 'QAR', 'Doha', 300.10, 'Arabic'),
(12, 'UAE', 'Asia', 10000000, 'AED', 'Abu Dhabi', 430.00, 'Arabic'),
(13, 'Singapore', 'Asia', 5600000, 'SGD', 'Singapore', 400.75, 'English'),
(14, 'South Korea', 'Asia', 52000000, 'KRW', 'Seoul', 1900.60, 'Korean'),
(15, 'Turkey', 'Asia/Europe', 84000000, 'TRY', 'Ankara', 750.30, 'Turkish'),
(16, 'South Africa', 'Africa', 60000000, 'ZAR', 'Pretoria', 370.00, 'English'),
(17, 'Ethiopia', 'Africa', 120000000, 'ETB', 'Addis Ababa', 110.25, 'Amharic'),
(18, 'Ireland', 'Europe', 5000000, 'EUR', 'Dublin', 500.50, 'English'),
(19, 'Malaysia', 'Asia', 32000000, 'MYR', 'Kuala Lumpur', 400.90, 'Malay'),
(20, 'Indonesia', 'Asia', 270000000, 'IDR', 'Jakarta', 1300.40, 'Indonesian');

INSERT INTO state_info VALUES
(1, 'Karnataka', 1, 68000000, 191791.0, 'Bengaluru', 75.36, 'Kannada'),
(2, 'California', 2, 39500000, 423970.0, 'Sacramento', 89.45, 'English'),
(3, 'Bavaria', 3, 13000000, 70542.0, 'Munich', 96.20, 'German'),
(4, 'Tokyo', 4, 14000000, 2191.0, 'Tokyo', 99.00, 'Japanese'),
(5, 'New South Wales', 5, 8000000, 809444.0, 'Sydney', 98.00, 'English'),
(6, 'England', 6, 56000000, 130395.0, 'London', 99.00, 'English'),
(7, 'Île-de-France', 7, 12000000, 12012.0, 'Paris', 98.70, 'French'),
(8, 'North Holland', 8, 2800000, 2664.0, 'Haarlem', 97.10, 'Dutch'),
(9, 'Ontario', 9, 14700000, 1076395.0, 'Toronto', 96.30, 'English'),
(10, 'São Paulo', 10, 46000000, 248209.0, 'São Paulo', 94.50, 'Portuguese'),
(11, 'Doha', 11, 956000, 1328.0, 'Doha', 97.20, 'Arabic'),
(12, 'Abu Dhabi', 12, 3000000, 67340.0, 'Abu Dhabi', 96.00, 'Arabic'),
(13, 'Central', 13, 940000, 732.0, 'Singapore', 99.90, 'English'),
(14, 'Seoul', 14, 9600000, 605.0, 'Seoul', 99.80, 'Korean'),
(15, 'Istanbul', 15, 15500000, 5343.0, 'Istanbul', 95.00, 'Turkish'),
(16, 'Gauteng', 16, 15500000, 18178.0, 'Johannesburg', 87.50, 'English'),
(17, 'Addis Ababa', 17, 5000000, 527.0, 'Addis Ababa', 80.20, 'Amharic'),
(18, 'Leinster', 18, 2800000, 19763.0, 'Dublin', 99.10, 'English'),
(19, 'Selangor', 19, 6600000, 8104.0, 'Shah Alam', 98.60, 'Malay'),
(20, 'Jakarta', 20, 10500000, 661.0, 'Jakarta', 95.20, 'Indonesian');
