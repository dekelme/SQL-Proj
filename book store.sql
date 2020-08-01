DROP DATABASE  IF EXISTS book_store ;
CREATE DATABASE IF NOT EXISTS book_store ;

use book_store;


CREATE TABLE book_details(
book_details_id smallint unsigned NOT NULL AUTO_INCREMENT,
book_details_page_number smallint unsigned NOT NULL,
book_details_book_condition ENUM('new','as new','good','medium','poor'),
book_details_book_weight float,
PRIMARY KEY (book_details_id)
);

CREATE TABLE phone(
phone_id smallint unsigned NOT NULL AUTO_INCREMENT,
phone_number varchar(45) NOT NULL,
PRIMARY KEY (phone_id)
);

CREATE TABLE seniority(
seniority_id smallint unsigned NOT NULL AUTO_INCREMENT,
seniority_start_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
seniority_end_date timestamp,
PRIMARY KEY (seniority_id)
);

CREATE TABLE post_type(
post_type_id smallint unsigned NOT NULL AUTO_INCREMENT,
post_type_company ENUM('Xpress','Israel post'),
post_type_method ENUM('registered mail','courier service','fast courier service','collecting point','home delivery'),
PRIMARY KEY (post_type_id)
);

CREATE TABLE supply(
supply_id smallint unsigned NOT NULL AUTO_INCREMENT,
supply_location ENUM('store','storage','none'),
supply_date DATETIME,
supply_quantity smallint unsigned NOT NULL,
supply_sold smallint unsigned NOT NULL,
PRIMARY KEY (supply_id)
);
CREATE TABLE person(
person_id smallint unsigned NOT NULL AUTO_INCREMENT,
person_first_name varchar(45) NOT NULL,
person_last_name varchar(45) NOT NULL,
person_address varchar(45) NOT NULL,
phone_id smallint unsigned NOT NULL,
PRIMARY KEY (person_id),
FOREIGN KEY (phone_id) REFERENCES phone (phone_id)
);


CREATE TABLE employee(
employee_id smallint unsigned NOT NULL AUTO_INCREMENT,
employee_working_hours smallint unsigned NOT NULL,
person_id smallint unsigned NOT NULL,
PRIMARY KEY (employee_id),
FOREIGN KEY (person_id) REFERENCES person (person_id)
);



CREATE TABLE book(
book_id smallint unsigned NOT NULL AUTO_INCREMENT,
book_title varchar(45) NOT NULL,
book_author varchar(45) NOT NULL,
book_details_id smallint unsigned NOT NULL,
supply_id smallint unsigned NOT NULL,
PRIMARY KEY (book_id),
FOREIGN KEY (book_details_id) REFERENCES book_details (book_details_id),
FOREIGN KEY (supply_id) REFERENCES supply (supply_id)
);

CREATE TABLE publisher(
publisher_id smallint unsigned NOT NULL AUTO_INCREMENT,
publisher_translator_name varchar(45) NOT NULL,
publisher_name varchar(45) NOT NULL,
publisher_year varchar(4),
book_id smallint unsigned NOT NULL,
PRIMARY KEY (publisher_id),
FOREIGN KEY (book_id) REFERENCES book (book_id)
);


CREATE TABLE customer(
customer_id smallint unsigned NOT NULL AUTO_INCREMENT,
customer_join_date DATETIME,
person_id smallint unsigned NOT NULL,
PRIMARY KEY (customer_id),
FOREIGN KEY (person_id) REFERENCES person (person_id)
);


CREATE TABLE transactions(
transactions_id smallint unsigned NOT NULL AUTO_INCREMENT,
transactions_book_sold smallint unsigned NOT NULL,
transactions_price smallint unsigned NOT NULL,
transaction_date datetime,
transactions_payment_method ENUM('credit card','Bit','bank transfer'),
customer_id smallint unsigned NOT NULL,
employee_id smallint unsigned NOT NULL,
PRIMARY KEY (transactions_id),
FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
FOREIGN KEY (employee_id) REFERENCES employee (employee_id)
);

CREATE TABLE _order(
order_id smallint unsigned NOT NULL AUTO_INCREMENT,
order_date DATETIME,
order_date_arrive DATETIME,
customer_id smallint unsigned NOT NULL,
transactions_id smallint unsigned NOT NULL,
book_id smallint unsigned NOT NULL,
PRIMARY KEY (order_id),
FOREIGN KEY (book_id) REFERENCES book (book_id),
FOREIGN KEY (transactions_id) REFERENCES transactions (transactions_id),
FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);


CREATE TABLE buy_book_store(
buy_book_store_id smallint unsigned NOT NULL AUTO_INCREMENT,
book_id smallint unsigned NOT NULL,
transactions_id smallint unsigned NOT NULL,
PRIMARY KEY (buy_book_store_id),
FOREIGN KEY (transactions_id) REFERENCES transactions (transactions_id),
FOREIGN KEY (book_id) REFERENCES book (book_id)
);

CREATE TABLE delivery(
delivery_id smallint unsigned NOT NULL AUTO_INCREMENT,
delivery_tracking_number varchar(45) NOT NULL,
delivery_status ENUM('in preparation','sent','arrived and waiting for collection','delivered'),
post_type_id smallint unsigned NOT NULL,
book_id smallint unsigned NOT NULL,
transactions_id smallint unsigned NOT NULL,
PRIMARY KEY (delivery_id),
FOREIGN KEY (post_type_id) REFERENCES post_type (post_type_id),
FOREIGN KEY (transactions_id) REFERENCES transactions (transactions_id),
FOREIGN KEY (book_id) REFERENCES book (book_id)
);

CREATE TABLE store(
store_id smallint unsigned NOT NULL AUTO_INCREMENT,
store_book_price_buy float,
store_book_price_sell float,
#book_id smallint unsigned NOT NULL,
buy_book_store_id smallint unsigned NOT NULL,
delivery_id smallint unsigned NOT NULL,
supply_id smallint unsigned NOT NULL,
PRIMARY KEY (store_id),
#FOREIGN KEY (book_id) REFERENCES book (book_id),
FOREIGN KEY (delivery_id) REFERENCES delivery (delivery_id),
FOREIGN KEY (buy_book_store_id) REFERENCES buy_book_store (buy_book_store_id),
FOREIGN KEY (supply_id) REFERENCES supply (supply_id)
);


CREATE TABLE store_payment(
store_payment_id smallint unsigned NOT NULL AUTO_INCREMENT,
store_payment_electric_bill smallint unsigned NOT NULL,
store_payment_water_bill smallint unsigned NOT NULL,
store_payment_rent smallint unsigned NOT NULL,
store_payment_tax smallint unsigned NOT NULL,
store_payment_other smallint unsigned NOT NULL,
store_payment_home_number smallint unsigned NOT NULL,
store_payment_phone_number smallint unsigned NOT NULL,
store_payment_month smallint unsigned NOT NULL,
store_payment_year smallint unsigned NOT NULL,
store_id smallint unsigned NOT NULL,
PRIMARY KEY (store_payment_id),
FOREIGN KEY (store_id) REFERENCES store (store_id)
);
CREATE TABLE book_in_store (
store_id smallint unsigned NOT NULL, 
book_id smallint unsigned NOT NULL,
book_in_store_date datetime,
PRIMARY KEY (store_id,book_id),
FOREIGN KEY (store_id) REFERENCES store (store_id),
FOREIGN KEY (book_id) REFERENCES book (book_id)
);

CREATE TABLE since (
employee_id smallint unsigned NOT NULL, 
seniority_id smallint unsigned NOT NULL,
PRIMARY KEY (seniority_id,employee_id),
FOREIGN KEY (employee_id) REFERENCES employee (employee_id),
FOREIGN KEY (seniority_id) REFERENCES seniority (seniority_id)
);