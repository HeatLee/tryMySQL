USE mvcproject;
SHOW TABLES;

CREATE TABLE positions(
id INT PRIMARY KEY AUTO_INCREMENT,
position NVARCHAR(10) NOT NULL
);

CREATE TABLE employees_list(
id INT PRIMARY KEY AUTO_INCREMENT,
first_name NVARCHAR(20) NOT NULL,
last_name NVARCHAR(30),
position_id INT NOT NULL,
workhours DOUBLE NOT NULL,
projects_amount INT NOT NULL,
FOREIGN KEY (position_id) 
	REFERENCES positions (id)
);

SHOW TABLES;