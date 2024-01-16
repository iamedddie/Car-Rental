DROP TABLE IF EXISTS CUSTOMER;
CREATE TABLE CUSTOMER (
                          customer_id INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(250) NOT NULL,
                          email VARCHAR(250) DEFAULT NULL,
                          phone_number VARCHAR(16) NOT NULL,
                          address VARCHAR(250) NOT NULL,
                          loyalty_number INT  NULL
);

DROP TABLE IF EXISTS CAR;
CREATE TABLE CAR (
                     car_id INT AUTO_INCREMENT PRIMARY KEY,
                     model VARCHAR(100) NOT NULL,
                     make VARCHAR(100) NOT NULL,
                     rate_per_day DECIMAL (5, 2) NOT NULL,
                     model_year INT NOT NULL
);


DROP TABLE IF EXISTS RENTAL;
CREATE TABLE RENTAL (
                        rental_id INT AUTO_INCREMENT PRIMARY KEY,
                        start_date DATE NOT NULL,
                        end_date DATE NOT NULL,
                        daily_rate DECIMAL NOT NULL,
                        car_id INT,
                        customer_id INT,
                        FOREIGN KEY (car_id) references CAR(car_id),
                        FOREIGN KEY (customer_id) references CUSTOMER(customer_id)
);


DROP TABLE IF EXISTS MAINTENANCE;
CREATE TABLE MAINTENANCE (
                             maintenance_id INT AUTO_INCREMENT PRIMARY KEY,
                             maintenance_type varchar(250),
                             description varchar(250),
                             maintenance_date DATE,
                             car_id INT,
                             FOREIGN KEY (car_id) references CAR(car_id)
);