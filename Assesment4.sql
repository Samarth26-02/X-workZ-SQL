//assesment 4

create database Assesment4;

use Assesment4;

//companies table
CREATE TABLE Companies (
    company_id INT PRIMARY KEY,
    name VARCHAR(100),
    founded_year INT,
    country VARCHAR(50),
    revenue DECIMAL(15,2),
    industry VARCHAR(50),
    ceo_name VARCHAR(100),
    num_employees INT,
    is_public BOOLEAN,
    headquarters VARCHAR(100)
);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    company_id INT,
    name VARCHAR(100),
    location VARCHAR(100),
    manager_name VARCHAR(100),
    budget DECIMAL(12,2),
    num_teams INT,
    established_year INT,
    floor_number INT,
    phone_extension VARCHAR(10),
    FOREIGN KEY (company_id) REFERENCES Companies(company_id)
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    company_id INT,
    department_id INT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    position VARCHAR(50),
    salary DECIMAL(10,2),
    date_joined DATE,
    is_active BOOLEAN,
    FOREIGN KEY (company_id) REFERENCES Companies(company_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    company_id INT,
    department_id INT,
    employee_id INT,
    name VARCHAR(100),
    budget DECIMAL(12,2),
    start_date DATE,
    end_date DATE,
    status VARCHAR(20),
    client_name VARCHAR(100),
    FOREIGN KEY (company_id) REFERENCES Companies(company_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
CREATE TABLE Tasks (
    task_id INT PRIMARY KEY,
    company_id INT,
    department_id INT,
    employee_id INT,
    project_id INT,
    title VARCHAR(100),
    description TEXT,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    status VARCHAR(20),
    FOREIGN KEY (company_id) REFERENCES Companies(company_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);



INSERT INTO Companies VALUES
(1, 'TechNova Inc.', 2005, 'USA', 25000000.00, 'Software', 'Alice Morgan', 1200, TRUE, 'Silicon Valley'),
(2, 'GreenFields Agro', 2010, 'India', 5400000.00, 'Agriculture', 'Ravi Verma', 300, FALSE, 'Hyderabad'),
(3, 'SkyHigh Aerospace', 1999, 'Germany', 102000000.00, 'Aerospace', 'Klaus Zimmer', 800, TRUE, 'Berlin'),
(4, 'HealthPlus Corp', 2012, 'UK', 18000000.00, 'Healthcare', 'Sarah Bennett', 500, TRUE, 'London'),
(5, 'EduCraft Ltd', 2015, 'Canada', 3500000.00, 'Education', 'Daniel Wong', 200, FALSE, 'Toronto'),
(6, 'AutoDrive', 2000, 'Japan', 75000000.00, 'Automobile', 'Keisuke Honda', 1500, TRUE, 'Tokyo'),
(7, 'QuantumNet', 2003, 'USA', 22000000.00, 'Networking', 'Linda Ross', 980, TRUE, 'New York'),
(8, 'MediCure', 2008, 'India', 6500000.00, 'Pharmaceuticals', 'Ajay Mehta', 350, FALSE, 'Mumbai'),
(9, 'BuildRight', 2011, 'Australia', 9200000.00, 'Construction', 'Chloe Martin', 430, TRUE, 'Sydney'),
(10, 'EcoWorld', 2013, 'Sweden', 4700000.00, 'Environment', 'Erik Svensson', 210, FALSE, 'Stockholm'),
(11, 'RoboDyn', 2017, 'USA', 3300000.00, 'Robotics', 'Nancy Drew', 95, FALSE, 'Boston'),
(12, 'SoftBridge', 2009, 'Germany', 26000000.00, 'Software', 'Stefan Bauer', 670, TRUE, 'Frankfurt'),
(13, 'CyberHive', 2016, 'France', 11000000.00, 'Cybersecurity', 'Julie Blanc', 300, TRUE, 'Paris'),
(14, 'AgroTech', 2007, 'Brazil', 5100000.00, 'Agritech', 'Lucas Oliveira', 380, FALSE, 'Sao Paulo'),
(15, 'DeepSea Exploration', 2001, 'Norway', 34000000.00, 'Marine', 'Kari Olsen', 420, TRUE, 'Oslo'),
(16, 'NanoTech Labs', 2014, 'China', 15500000.00, 'Nanotechnology', 'Liu Zhang', 600, TRUE, 'Beijing'),
(17, 'SkyComm', 2006, 'South Korea', 29000000.00, 'Telecom', 'Kim Ji-hoon', 800, TRUE, 'Seoul'),
(18, 'GreenBuild', 2013, 'Netherlands', 8000000.00, 'Green Energy', 'Anna Jansen', 275, FALSE, 'Amsterdam'),
(19, 'SecureCloud', 2010, 'USA', 16000000.00, 'Cloud Services', 'Raj Patel', 510, TRUE, 'Seattle'),
(20, 'SmartLogix', 2012, 'India', 12000000.00, 'Logistics', 'Meera Menon', 390, FALSE, 'Chennai'),
(21, 'CleanAir Solutions', 2015, 'Finland', 6800000.00, 'Environmental Tech', 'Olavi Laine', 200, FALSE, 'Helsinki'),
(22, 'GameFusion', 2011, 'USA', 9100000.00, 'Gaming', 'Carlos Rivera', 330, TRUE, 'Austin'),
(23, 'MedicoSoft', 2018, 'Canada', 4400000.00, 'Healthcare IT', 'Emily Brooks', 145, FALSE, 'Ottawa'),
(24, 'NextGen Energy', 2004, 'USA', 37000000.00, 'Energy', 'Jonathan Clark', 950, TRUE, 'Denver'),
(25, 'AquaPure', 2002, 'India', 2900000.00, 'Water Tech', 'Arjun Reddy', 170, FALSE, 'Pune'),
(26, 'Zypher Electronics', 2006, 'Japan', 22000000.00, 'Electronics', 'Takeshi Yamada', 760, TRUE, 'Osaka'),
(27, 'Helix Bio', 2011, 'UK', 12000000.00, 'Biotech', 'Claire Evans', 310, FALSE, 'Cambridge'),
(28, 'AIWorks', 2017, 'Germany', 18500000.00, 'Artificial Intelligence', 'Hans Weber', 530, TRUE, 'Munich'),
(29, 'FinServe', 2009, 'USA', 19800000.00, 'Finance', 'Diana Young', 450, TRUE, 'Chicago'),
(30, 'SolarSphere', 2016, 'Australia', 4100000.00, 'Renewables', 'Ethan Hall', 230, FALSE, 'Melbourne');


INSERT INTO Departments VALUES
(1, 1, 'Engineering', 'San Francisco', 'Bob Taylor', 1200000.00, 10, 2006, 5, '1234'),
(2, 2, 'Research', 'Hyderabad', 'Neha Sharma', 800000.00, 4, 2011, 3, '2345'),
(3, 3, 'Design', 'Berlin', 'Uwe Müller', 1500000.00, 6, 2000, 2, '3456'),
(4, 4, 'Medical R&D', 'London', 'Dr. James Lee', 950000.00, 5, 2013, 4, '4567'),
(5, 5, 'Curriculum Dev', 'Toronto', 'Emma Lewis', 300000.00, 2, 2016, 2, '5678'),
(6, 6, 'Vehicle Design', 'Tokyo', 'Taro Yamamoto', 2400000.00, 7, 2001, 6, '6789'),
(7, 7, 'IT Support', 'New York', 'Mark Green', 600000.00, 3, 2004, 5, '7890'),
(8, 8, 'Pharma Lab', 'Mumbai', 'Sunita Rao', 820000.00, 4, 2009, 3, '8901'),
(9, 9, 'Structural Eng', 'Sydney', 'Matthew Brown', 1300000.00, 6, 2012, 8, '9012'),
(10, 10, 'Sustainability', 'Stockholm', 'Lars Nyström', 710000.00, 3, 2014, 2, '0123'),
(11, 11, 'Robotics Lab', 'Boston', 'Rachel Adams', 440000.00, 2, 2018, 1, '1122'),
(12, 12, 'Cloud Dev', 'Frankfurt', 'Tobias Müller', 1100000.00, 5, 2010, 6, '1223'),
(13, 13, 'Cyber Defense', 'Paris', 'Francois Laurent', 900000.00, 4, 2017, 3, '1324'),
(14, 14, 'Agri Solutions', 'Sao Paulo', 'Pedro Lima', 620000.00, 3, 2008, 2, '1425'),
(15, 15, 'Marine Ops', 'Oslo', 'Greta Hansen', 2000000.00, 6, 2002, 4, '1526'),
(16, 16, 'Nano Fabrication', 'Beijing', 'Wei Chen', 1300000.00, 4, 2015, 5, '1627'),
(17, 17, 'Telecom Infra', 'Seoul', 'Park Min', 1900000.00, 6, 2007, 7, '1728'),
(18, 18, 'Green R&D', 'Amsterdam', 'Jeroen de Vries', 760000.00, 3, 2013, 2, '1829'),
(19, 19, 'Storage Ops', 'Seattle', 'Sara Thomas', 1500000.00, 5, 2011, 6, '1930'),
(20, 20, 'Route Analysis', 'Chennai', 'Vinod R', 930000.00, 3, 2013, 4, '2031'),
(21, 21, 'Clean Tech', 'Helsinki', 'Mika Niemi', 600000.00, 2, 2016, 2, '2132'),
(22, 22, 'Game Design', 'Austin', 'Laura Chen', 890000.00, 3, 2012, 4, '2233'),
(23, 23, 'Health IT', 'Ottawa', 'Brian Scott', 480000.00, 2, 2019, 1, '2334'),
(24, 24, 'Energy Grid', 'Denver', 'Jacob Lee', 2100000.00, 5, 2005, 7, '2435'),
(25, 25, 'Purification R&D', 'Pune', 'Kavita Desai', 520000.00, 3, 2003, 3, '2536'),
(26, 26, 'Consumer Devices', 'Osaka', 'Aiko Tanaka', 1450000.00, 4, 2007, 4, '2637'),
(27, 27, 'Bio Engineering', 'Cambridge', 'Oliver Wright', 830000.00, 2, 2012, 2, '2738'),
(28, 28, 'AI Research', 'Munich', 'Nina Schulz', 1800000.00, 5, 2017, 5, '2839'),
(29, 29, 'Wealth Mgmt', 'Chicago', 'Anthony Hill', 1400000.00, 3, 2010, 3, '2940'),
(30, 30, 'Solar R&D', 'Melbourne', 'Isabella Taylor', 690000.00, 2, 2016, 1, '3041');


INSERT INTO Employees VALUES
(1, 1, 1, 'John Smith', 'john@technova.com', '123-456-7890', 'Software Engineer', 90000.00, '2020-05-10', TRUE),
(2, 2, 2, 'Priya Iyer', 'priya@greenfields.com', '234-567-8901', 'Agri Scientist', 65000.00, '2018-08-21', TRUE),
(3, 3, 3, 'Felix Hahn', 'felix@skyhigh.de', '345-678-9012', 'Aerodynamics Engineer', 95000.00, '2015-11-03', TRUE),
(4, 4, 4, 'Dr. Amanda Clark', 'amanda@meditech.com', '456-789-0123', 'Medical Researcher', 85000.00, '2021-02-14', TRUE),
(5, 5, 5, 'Oliver Evans', 'oliver@learnwell.com', '567-890-1234', 'Education Analyst', 60000.00, '2019-07-19', TRUE),
(6, 6, 6, 'Kenta Mori', 'kenta@autodrive.jp', '678-901-2345', 'Mechanical Engineer', 97000.00, '2016-09-01', TRUE),
(7, 7, 7, 'Lisa White', 'lisa@securecloud.com', '789-012-3456', 'SysAdmin', 78000.00, '2017-12-05', TRUE),
(8, 8, 8, 'Ajay Mehta', 'ajay@biolife.in', '890-123-4567', 'Pharmacologist', 69000.00, '2020-04-10', TRUE),
(9, 9, 9, 'Chloe Anderson', 'chloe@infraworks.au', '901-234-5678', 'Civil Engineer', 88000.00, '2014-03-21', TRUE),
(10, 10, 10, 'Erik Svensson', 'erik@climatetech.se', '012-345-6789', 'Sustainability Officer', 71000.00, '2022-06-01', TRUE),
(11, 11, 11, 'Kevin Harris', 'kevin@autobot.ai', '111-222-3333', 'Robotics Dev', 96000.00, '2018-08-18', TRUE),
(12, 12, 12, 'Hannah Becker', 'hannah@neuronet.de', '222-333-4444', 'Cloud Architect', 94000.00, '2019-10-20', TRUE),
(13, 13, 13, 'Luc Dubois', 'luc@cybershield.fr', '333-444-5555', 'Network Security', 87000.00, '2020-12-30', TRUE),
(14, 14, 14, 'Maria Souza', 'maria@agronext.br', '444-555-6666', 'Soil Analyst', 61000.00, '2015-11-15', TRUE),
(15, 15, 15, 'Lars Johansen', 'lars@oceanix.no', '555-666-7777', 'Marine Engineer', 98000.00, '2013-07-07', TRUE),
(16, 16, 16, 'Zhang Wei', 'zhang@nanocraft.cn', '666-777-8888', 'Nano Researcher', 92000.00, '2021-09-09', TRUE),
(17, 17, 17, 'Kim Soo', 'soo@connecttel.kr', '777-888-9999', 'Network Engineer', 85000.00, '2016-05-05', TRUE),
(18, 18, 18, 'Sven Jansen', 'sven@greenpower.nl', '888-999-0000', 'Energy Analyst', 73000.00, '2023-01-12', TRUE),
(19, 19, 19, 'Nancy Wilson', 'nancy@datasync.us', '999-000-1111', 'Data Scientist', 97000.00, '2018-03-03', TRUE),
(20, 20, 20, 'Arun Kumar', 'arun@transmart.in', '000-111-2222', 'Transport Analyst', 67000.00, '2017-06-30', TRUE),
(21, 21, 21, 'Teemu Laine', 'teemu@cleanfuture.fi', '101-202-3030', 'Env Researcher', 74000.00, '2014-08-25', TRUE),
(22, 22, 22, 'Emily Zhao', 'emily@funfinity.com', '202-303-4040', 'Game Dev', 88000.00, '2020-11-11', TRUE),
(23, 23, 23, 'Jordan Baker', 'jordan@medtech.ca', '303-404-5050', 'Health IT Officer', 69000.00, '2016-02-28', TRUE),
(24, 24, 24, 'Tyler Moore', 'tyler@powergrid.io', '404-505-6060', 'Grid Engineer', 91000.00, '2012-10-14', TRUE),
(25, 25, 25, 'Riya Sharma', 'riya@aquaindia.com', '505-606-7070', 'Water Scientist', 62000.00, '2015-01-22', TRUE),
(26, 26, 26, 'Satoshi Tanaka', 'satoshi@homebyte.jp', '606-707-8080', 'Device Engineer', 95000.00, '2011-05-17', TRUE),
(27, 27, 27, 'James Foster', 'james@genebridge.uk', '707-808-9090', 'BioTech Expert', 86000.00, '2023-03-30', TRUE),
(28, 28, 28, 'Klara Neumann', 'klara@intellect.de', '808-909-0001', 'AI Researcher', 99000.00, '2020-06-06', TRUE),
(29, 29, 29, 'Robert King', 'robert@wealthwise.com', '909-000-1112', 'Financial Analyst', 87000.00, '2018-07-01', TRUE),
(30, 30, 30, 'Ella Brown', 'ella@sunbeam.au', '000-111-2223', 'Solar Engineer', 72000.00, '2019-09-09', TRUE);


INSERT INTO Projects VALUES
(1, 1, 1, 1, 'AI Platform', 500000.00, '2023-01-01', '2023-12-31', 'Ongoing', 'Global Tech'),
(2, 2, 2, 2, 'Soil Sensor', 150000.00, '2022-06-01', '2023-06-01', 'Completed', 'Farm Aid'),
(3, 3, 3, 3, 'Jet Wing Redesign', 2000000.00, '2021-01-01', '2024-01-01', 'Ongoing', 'EuroJet'),
(4, 4, 4, 4, 'Cancer Genome Map', 750000.00, '2022-01-01', '2023-12-31', 'Ongoing', 'World Health Org'),
(5, 5, 5, 5, 'Virtual Classrooms', 300000.00, '2021-09-01', '2022-09-01', 'Completed', 'EduNation'),
(6, 6, 6, 6, 'AutoPilot v2', 1200000.00, '2023-03-15', '2024-03-15', 'Ongoing', 'DriveX'),
(7, 7, 7, 7, 'Zero Downtime Cloud', 950000.00, '2022-05-01', '2023-11-01', 'Completed', 'CloudServe'),
(8, 8, 8, 8, 'Drug Efficiency Trials', 420000.00, '2023-02-10', '2024-02-10', 'Ongoing', 'PharmaPlus'),
(9, 9, 9, 9, 'Smart Infrastructure', 1300000.00, '2021-10-20', '2023-10-20', 'Ongoing', 'CityBuild'),
(10, 10, 10, 10, 'Eco Heat Pumps', 280000.00, '2022-11-11', '2023-11-11', 'Completed', 'GreenHouse GmbH'),
(11, 11, 11, 11, 'Autonomous Bot Swarm', 1800000.00, '2023-07-01', '2024-07-01', 'Ongoing', 'DefenseX'),
(12, 12, 12, 12, 'Neural AI Core', 2200000.00, '2022-08-01', '2023-08-01', 'Completed', 'Cerebra'),
(13, 13, 13, 13, 'Firewall Fortress', 650000.00, '2023-01-10', '2023-12-10', 'Ongoing', 'CyberSecure'),
(14, 14, 14, 14, 'Soil Boost Formula', 270000.00, '2020-03-01', '2021-03-01', 'Completed', 'AgriWorld'),
(15, 15, 15, 15, 'Ocean Current Turbine', 1550000.00, '2021-05-01', '2024-05-01', 'Ongoing', 'SeaTech'),
(16, 16, 16, 16, 'Nano Blood Scanner', 840000.00, '2022-02-01', '2023-02-01', 'Completed', 'MediNano'),
(17, 17, 17, 17, '5G Tower Expansion', 930000.00, '2023-06-01', '2024-06-01', 'Ongoing', 'NetWide'),
(18, 18, 18, 18, 'Energy Smart Meters', 610000.00, '2021-04-01', '2022-04-01', 'Completed', 'EcoGrid'),
(19, 19, 19, 19, 'AI Forecast Engine', 1150000.00, '2023-09-01', '2024-09-01', 'Ongoing', 'BizPredict'),
(20, 20, 20, 20, 'Urban Transit Map', 470000.00, '2022-10-01', '2023-10-01', 'Completed', 'MoveCity'),
(21, 21, 21, 21, 'Clean Fuel Study', 990000.00, '2020-01-01', '2021-01-01', 'Completed', 'GlobalFuel'),
(22, 22, 22, 22, 'Metaverse Edu World', 1580000.00, '2023-05-01', '2024-05-01', 'Ongoing', 'NextLearn'),
(23, 23, 23, 23, 'Patient Health Portal', 520000.00, '2022-01-01', '2023-01-01', 'Completed', 'HealthBridge'),
(24, 24, 24, 24, 'Grid Optimization', 730000.00, '2021-06-01', '2022-06-01', 'Completed', 'PowerNow'),
(25, 25, 25, 25, 'Smart Irrigation', 420000.00, '2022-03-01', '2023-03-01', 'Completed', 'CropPro'),
(26, 26, 26, 26, 'Smart Home OS', 1340000.00, '2023-08-01', '2024-08-01', 'Ongoing', 'HomeByte'),
(27, 27, 27, 27, 'DNA Analysis Toolkit', 940000.00, '2020-07-01', '2021-07-01', 'Completed', 'BioWorks'),
(28, 28, 28, 28, 'AI Professor', 770000.00, '2022-09-01', '2023-09-01', 'Completed', 'KnowTech'),
(29, 29, 29, 29, 'Wealth Assistant Bot', 560000.00, '2023-02-01', '2024-02-01', 'Ongoing', 'FinRobot'),
(30, 30, 30, 30, 'Solar Field Optimizer', 1020000.00, '2021-11-01', '2023-11-01', 'Ongoing', 'SunGrid');


INSERT INTO Tasks VALUES
(1, 1, 1, 1, 1, 'Data Preprocessing', 'Clean and prepare training data', '2023-01-05 09:00:00', '2023-01-10 18:00:00', 'Done'),
(2, 2, 2, 2, 2, 'Sensor Prototype', 'Assemble and test sensor model', '2022-06-05 08:30:00', '2022-06-15 17:00:00', 'Done'),
(3, 3, 3, 3, 3, 'Wind Tunnel Testing', 'Run aerodynamic simulations', '2023-05-01 10:00:00', '2023-05-20 18:00:00', 'Ongoing'),
(4, 4, 4, 4, 4, 'Gene Mapping', 'Map cancer genomes across variants', '2022-02-01 09:00:00', '2022-06-01 17:00:00', 'Done'),
(5, 5, 5, 5, 5, 'Lesson Streaming Setup', 'Configure live stream infrastructure', '2021-09-05 10:00:00', '2021-09-10 16:00:00', 'Done'),
(6, 6, 6, 6, 6, 'Sensor Calibration', 'Test sensors in road conditions', '2023-04-01 08:00:00', '2023-04-10 18:00:00', 'Ongoing'),
(7, 7, 7, 7, 7, 'System Load Testing', 'Stress test cloud system uptime', '2022-05-10 09:30:00', '2022-06-15 17:00:00', 'Completed'),
(8, 8, 8, 8, 8, 'Lab Protocol Draft', 'Draft new testing procedures', '2023-02-15 11:00:00', '2023-03-01 17:00:00', 'Ongoing'),
(9, 9, 9, 9, 9, 'Infrastructure Audit', 'Evaluate smart infra readiness', '2021-11-01 08:30:00', '2022-01-15 16:00:00', 'Done'),
(10, 10, 10, 10, 10, 'Thermal Tests', 'Test heat pump systems', '2022-12-01 10:00:00', '2023-01-01 15:00:00', 'Completed'),
(11, 11, 11, 11, 11, 'Bot AI Coordination', 'Develop inter-bot communication', '2023-07-15 09:00:00', '2023-08-15 17:00:00', 'Ongoing'),
(12, 12, 12, 12, 12, 'Model Training', 'Train neural core on image data', '2022-08-05 10:00:00', '2022-09-05 17:00:00', 'Completed'),
(13, 13, 13, 13, 13, 'Vulnerability Scan', 'Scan internal systems', '2023-02-01 09:00:00', '2023-03-01 18:00:00', 'Ongoing'),
(14, 14, 14, 14, 14, 'Field Trials', 'Test formula in various soils', '2020-04-01 08:00:00', '2020-07-01 18:00:00', 'Completed'),
(15, 15, 15, 15, 15, 'Blade Design', 'Design turbine blade prototypes', '2021-06-01 10:00:00', '2021-09-01 17:00:00', 'Ongoing'),
(16, 16, 16, 16, 16, 'Scanner Build', 'Assemble nano scanners', '2022-02-10 09:00:00', '2022-03-10 16:00:00', 'Completed'),
(17, 17, 17, 17, 17, 'Tower Mapping', 'Identify key install areas', '2023-06-10 08:30:00', '2023-07-10 18:00:00', 'Ongoing'),
(18, 18, 18, 18, 18, 'Meter Testing', 'Verify power efficiency', '2021-05-01 10:00:00', '2021-06-01 17:00:00', 'Completed'),
(19, 19, 19, 19, 19, 'Data Collection', 'Gather business sales data', '2023-09-10 10:00:00', '2023-10-10 18:00:00', 'Ongoing'),
(20, 20, 20, 20, 20, 'Map Integration', 'Merge maps into mobile app', '2022-10-10 09:00:00', '2022-11-10 17:00:00', 'Completed'),
(21, 21, 21, 21, 21, 'Fuel Sample Analysis', 'Test various clean fuels', '2020-02-01 08:00:00', '2020-05-01 17:00:00', 'Completed'),
(22, 22, 22, 22, 22, 'World Design', 'Design immersive learning world', '2023-05-10 10:00:00', '2023-06-10 18:00:00', 'Ongoing'),
(23, 23, 23, 23, 23, 'User Portal Mockup', 'Create front-end designs', '2022-01-10 10:00:00', '2022-02-10 18:00:00', 'Completed'),
(24, 24, 24, 24, 24, 'Grid Simulation', 'Simulate energy flow', '2021-06-10 09:00:00', '2021-07-10 17:00:00', 'Completed'),
(25, 25, 25, 25, 25, 'Irrigation Test', 'Prototype automated watering', '2022-03-10 10:00:00', '2022-04-10 17:00:00', 'Completed'),
(26, 26, 26, 26, 26, 'UI/UX Sprint', 'Design new Smart OS interface', '2023-08-10 09:30:00', '2023-09-10 18:00:00', 'Ongoing'),
(27, 27, 27, 27, 27, 'DNA Sample Prep', 'Extract & store DNA samples', '2020-08-01 10:00:00', '2020-09-01 17:00:00', 'Completed'),
(28, 28, 28, 28, 28, 'Lecture AI Config', 'Set knowledge base for AI', '2022-09-10 10:00:00', '2022-10-10 17:00:00', 'Completed'),
(29, 29, 29, 29, 29, 'Bot Decision Tree', 'Program investment logic', '2023-02-10 08:00:00', '2023-03-10 18:00:00', 'Ongoing'),
(30, 30, 30, 30, 30, 'Field Panel Sync', 'Test solar sync algorithms', '2021-12-01 09:00:00', '2022-01-01 17:00:00', 'Completed');

