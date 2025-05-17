create database Assesment2;
//assignment2
use  Assesment2;
CREATE TABLE airlines_info (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(100),
    founded_year INT,
    headquarters VARCHAR(100),
    fleet_size INT
);
//create table
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
(1, 'SkyHigh Airlines', 1980, 'Chicago, USA', 650, 'Lisa Adams', TRUE, 4.2),
(2, 'Falcon Wings', 1990, 'Doha, Qatar', 220, 'Ali Hassan', TRUE, 4.6),
(3, 'SunAir', 1987, 'Dubai, UAE', 260, 'Omar Farooq', TRUE, 4.5),
(4, 'IndiSky', 1995, 'Mumbai, India', 130, 'Ravi Mehta', TRUE, 3.8),
(5, 'LuftAir', 1960, 'Frankfurt, Germany', 310, 'Stefan Braun', TRUE, 4.3),
(6, 'Pacific Air', 1975, 'Los Angeles, USA', 700, 'Emily Clark', TRUE, 4.4),
(7, 'EuroFly', 1985, 'Paris, France', 280, 'Jean Dupont', TRUE, 4.1),
(8, 'AeroAsia', 1992, 'Singapore', 150, 'Wei Zhang', TRUE, 4.7),
(9, 'TransGlobal', 1988, 'London, UK', 320, 'Oliver Smith', TRUE, 4.0),
(10, 'Southern Skies', 1970, 'Sydney, Australia', 290, 'Emma Johnson', TRUE, 4.5),
(11, 'Northern Lights', 1983, 'Oslo, Norway', 180, 'Lars Hansen', TRUE, 4.2),
(12, 'Eastern Express', 1991, 'Tokyo, Japan', 240, 'Yuki Tanaka', TRUE, 4.6),
(13, 'Western Wings', 1986, 'San Francisco, USA', 310, 'Carlos Ramirez', TRUE, 4.3),
(14, 'Central Air', 1993, 'Toronto, Canada', 200, 'Sophie Martin', TRUE, 4.1),
(15, 'Global Connect', 1989, 'Dubai, UAE', 270, 'Ahmed Khan', TRUE, 4.4),
(16, 'SkyNet Airways', 1990, 'Berlin, Germany', 230, 'Hans Müller', TRUE, 4.0),
(17, 'Blue Horizon', 1984, 'Rome, Italy', 190, 'Giulia Rossi', TRUE, 4.2),
(18, 'RedJet', 1996, 'Madrid, Spain', 160, 'Carlos López', TRUE, 3.9),
(19, 'GreenAir', 1998, 'Dublin, Ireland', 140, 'Aoife O\'Connor', TRUE, 4.1),
(20, 'SilverLine', 2000, 'Zurich, Switzerland', 120, 'Luca Meier', TRUE, 4.3);

INSERT INTO country_info VALUES
(1, 'India', 'Asia', 1410000000, 'INR', 'New Delhi', 3200.75, 'Hindi'),
(2, 'USA', 'North America', 331000000, 'USD', 'Washington D.C.', 23100.60, 'English'),
(3, 'Germany', 'Europe', 83500000, 'EUR', 'Berlin', 4850.90, 'German'),
(4, 'Qatar', 'Asia', 3000000, 'QAR', 'Doha', 310.20, 'Arabic'),
(5, 'UAE', 'Asia', 10100000, 'AED', 'Abu Dhabi', 450.10, 'Arabic'),
(6, 'France', 'Europe', 67000000, 'EUR', 'Paris', 3000.45, 'French'),
(7, 'Japan', 'Asia', 125000000, 'JPY', 'Tokyo', 5400.00, 'Japanese'),
(8, 'Australia', 'Oceania', 26000000, 'AUD', 'Canberra', 1500.25, 'English'),
(9, 'UK', 'Europe', 67000000, 'GBP', 'London', 3200.60, 'English'),
(10, 'Canada', 'North America', 38000000, 'CAD', 'Ottawa', 2000.55, 'English'),
(11, 'Singapore', 'Asia', 5600000, 'SGD', 'Singapore', 400.75, 'English'),
(12, 'Italy', 'Europe', 60000000, 'EUR', 'Rome', 2800.30, 'Italian'),
(13, 'Spain', 'Europe', 47000000, 'EUR', 'Madrid', 2700.20, 'Spanish'),
(14, 'Netherlands', 'Europe', 17000000, 'EUR', 'Amsterdam', 900.00, 'Dutch'),
(15, 'Switzerland', 'Europe', 8500000, 'CHF', 'Bern', 700.50, 'German'),
(16, 'Norway', 'Europe', 5400000, 'NOK', 'Oslo', 600.40, 'Norwegian'),
(17, 'Ireland', 'Europe', 5000000, 'EUR', 'Dublin', 500.50, 'English'),
(18, 'South Korea', 'Asia', 52000000, 'KRW', 'Seoul', 1900.60, 'Korean'),
(19, 'Brazil', 'South America', 213000000, 'BRL', 'Brasilia', 1800.80, 'Portuguese'),
(20, 'Mexico', 'North America', 126000000, 'MXN', 'Mexico City', 1200.70, 'Spanish');

INSERT INTO state_info VALUES
(1, 'Karnataka', 1, 68000000, 191791.0, 'Bengaluru', 75.36, 'Kannada'),
(2, 'Maharashtra', 1, 124000000, 307713.0, 'Mumbai', 82.91, 'Marathi'),
(3, 'Tamil Nadu', 1, 77000000, 130058.0, 'Chennai', 80.33, 'Tamil'),
(4, 'Uttar Pradesh', 1, 241000000, 243286.0, 'Lucknow', 67.68, 'Hindi'),
(5, 'West Bengal', 1, 99000000, 88752.0, 'Kolkata', 77.08, 'Bengali'),
(6, 'Kerala', 1, 35600000, 38863.0, 'Thiruvananthapuram', 96.20, 'Malayalam'),
(7, 'Gujarat', 1, 63800000, 196024.0, 'Gandhinagar', 78.03, 'Gujarati'),
(8, 'Rajasthan', 1, 81000000, 342239.0, 'Jaipur', 66.11, 'Hindi'),
(9, 'Bihar', 1, 124800000, 94163.0, 'Patna', 63.82, 'Hindi'),
(10, 'Andhra Pradesh', 1, 53900000, 162968.0, 'Amaravati', 67.35, 'Telugu'),
(11, 'Telangana', 1, 40000000, 112077.0, 'Hyderabad', 72.80, 'Telugu'),
(12, 'Madhya Pradesh', 1, 85300000, 308245.0, 'Bhopal', 70.63, 'Hindi'),
(13, 'Odisha', 1, 46300000, 155707.0, 'Bhubaneswar', 72.87, 'Odia'),
(14, 'Punjab', 1, 30000000, 50362.0, 'Chandigarh', 76.68, 'Punjabi'),
(15, 'Assam', 1, 35600000, 78438.0, 'Dispur', 73.18, 'Assamese'),
(16, 'Chhattisgarh', 1, 29400000, 135192.0, 'Raipur', 71.04, 'Hindi'),
(17, 'Haryana', 1, 28600000, 44212.0, 'Chandigarh', 76.64, 'Hindi'),
(18, 'Jharkhand', 1, 38500000, 79716.0, 'Ranchi', 66.41, 'Hindi'),
(19, 'Uttarakhand', 1, 11200000, 53483.0, 'Dehradun', 79.63, 'Hindi'),
(20, 'Himachal Pradesh', 1, 7300000, 55673.0, 'Shimla', 83.78, 'Hindi');
