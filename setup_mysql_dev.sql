-- This script prepares MySQL server for AirBnB_v2 project
CREATE DATABASE IF NOT EXISTS `hbnb_dev_db`;

-- Create user
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- Grant privileges to hbnb_dev on hbnb_dev_db
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';

-- Grant privileges to hbnb_dev on performance_schema db
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
FLUSH PRIVILEGES;
