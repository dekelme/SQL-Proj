use book_store;


INSERT INTO `book_store`.`book_details` (`book_details_id`,`book_details_page_number`,`book_details_book_condition`,`book_details_book_weight`) VALUES (1,'120','as new','3.8');
INSERT INTO `book_store`.`book_details` (`book_details_id`,`book_details_page_number`,`book_details_book_condition`,`book_details_book_weight`) VALUES (2,'170','new','5');
INSERT INTO `book_store`.`book_details` (`book_details_id`,`book_details_page_number`,`book_details_book_condition`,`book_details_book_weight`) VALUES (3,'300','medium','6.2');
INSERT INTO `book_store`.`book_details` (`book_details_id`,`book_details_page_number`,`book_details_book_condition`,`book_details_book_weight`) VALUES (4,'380','poor','6.7');
INSERT INTO `book_store`.`book_details` (`book_details_id`,`book_details_page_number`,`book_details_book_condition`,`book_details_book_weight`) VALUES (5,'400','good','7.2');
INSERT INTO `book_store`.`book_details` (`book_details_id`,`book_details_page_number`,`book_details_book_condition`,`book_details_book_weight`) VALUES (6,'90','good','1.1');
INSERT INTO `book_store`.`book_details` (`book_details_id`,`book_details_page_number`,`book_details_book_condition`,`book_details_book_weight`) VALUES (7,'600','medium','8');
INSERT INTO `book_store`.`book_details` (`book_details_id`,`book_details_page_number`,`book_details_book_condition`,`book_details_book_weight`) VALUES (8,'100','as new','2.1');
INSERT INTO `book_store`.`book_details` (`book_details_id`,`book_details_page_number`,`book_details_book_condition`,`book_details_book_weight`) VALUES (9,'270','poor','3.1');
INSERT INTO `book_store`.`book_details` (`book_details_id`,`book_details_page_number`,`book_details_book_condition`,`book_details_book_weight`) VALUES (10,'100','new','3.1');

INSERT INTO `book_store`.`phone` (`phone_id`,`phone_number`) VALUES (1,'052-3456789');
INSERT INTO `book_store`.`phone` (`phone_id`,`phone_number`) VALUES (2,'053-4567867');
INSERT INTO `book_store`.`phone` (`phone_id`,`phone_number`) VALUES (3,'050-5678556');
INSERT INTO `book_store`.`phone` (`phone_id`,`phone_number`) VALUES (4,'056-7855455');
INSERT INTO `book_store`.`phone` (`phone_id`,`phone_number`) VALUES (5,'052-2345789');
INSERT INTO `book_store`.`phone` (`phone_id`,`phone_number`) VALUES (6,'054-4678907');
INSERT INTO `book_store`.`phone` (`phone_id`,`phone_number`) VALUES (7,'09-79657765');
INSERT INTO `book_store`.`phone` (`phone_id`,`phone_number`) VALUES (8,'054-4567899');
INSERT INTO `book_store`.`phone` (`phone_id`,`phone_number`) VALUES (9,'050-0505584');
INSERT INTO `book_store`.`phone` (`phone_id`,`phone_number`) VALUES (10,'052-3932277');


INSERT INTO `book_store`.`seniority` (`seniority_id`,`seniority_start_date`,`seniority_end_date`) VALUES (1,'2019-10-06','2019-11-06');
INSERT INTO `book_store`.`seniority` (`seniority_id`,`seniority_start_date`,`seniority_end_date`) VALUES (2,'2015-03-17','2020-12-14');
INSERT INTO `book_store`.`seniority` (`seniority_id`,`seniority_start_date`,`seniority_end_date`) VALUES (3,'2017-01-02','2019-11-06');
INSERT INTO `book_store`.`seniority` (`seniority_id`,`seniority_start_date`,`seniority_end_date`) VALUES (4,'2014-10-06','2019-11-22');
INSERT INTO `book_store`.`seniority` (`seniority_id`,`seniority_start_date`,`seniority_end_date`) VALUES (5,'2016-06-14','2020-09-07');
INSERT INTO `book_store`.`seniority` (`seniority_id`,`seniority_start_date`,`seniority_end_date`) VALUES (6,'2006-08-24','2014-09-07');
INSERT INTO `book_store`.`seniority` (`seniority_id`,`seniority_start_date`,`seniority_end_date`) VALUES (7,'2015-12-13','2016-11-12');
INSERT INTO `book_store`.`seniority` (`seniority_id`,`seniority_start_date`,`seniority_end_date`) VALUES (8,'2003-10-03','2004-11-06');
INSERT INTO `book_store`.`seniority` (`seniority_id`,`seniority_start_date`,`seniority_end_date`) VALUES (9,'2019-09-12','2020-07-28');
INSERT INTO `book_store`.`seniority` (`seniority_id`,`seniority_start_date`,`seniority_end_date`) VALUES (10,'2012-02-01','2012-02-29');

INSERT INTO `book_store`.`post_type` (`post_type_id`,`post_type_company`,`post_type_method`) VALUES (1,'Xpress','collecting point');
INSERT INTO `book_store`.`post_type` (`post_type_id`,`post_type_company`,`post_type_method`) VALUES (2,'Xpress','home delivery');
INSERT INTO `book_store`.`post_type` (`post_type_id`,`post_type_company`,`post_type_method`) VALUES (3,'Israel post','registered mail');
INSERT INTO `book_store`.`post_type` (`post_type_id`,`post_type_company`,`post_type_method`) VALUES (4,'Israel post','courier service');
INSERT INTO `book_store`.`post_type` (`post_type_id`,`post_type_company`,`post_type_method`) VALUES (5,'Israel post','fast courier service');
INSERT INTO `book_store`.`post_type` (`post_type_id`,`post_type_company`,`post_type_method`) VALUES (6,'Xpress','home delivery');
INSERT INTO `book_store`.`post_type` (`post_type_id`,`post_type_company`,`post_type_method`) VALUES (7,'Israel post','registered mail');
INSERT INTO `book_store`.`post_type` (`post_type_id`,`post_type_company`,`post_type_method`) VALUES (8,'Israel post','fast courier service');
INSERT INTO `book_store`.`post_type` (`post_type_id`,`post_type_company`,`post_type_method`) VALUES (9,'Israel post','courier service');
INSERT INTO `book_store`.`post_type` (`post_type_id`,`post_type_company`,`post_type_method`) VALUES (10,'Israel post','courier service');

INSERT INTO `book_store`.`supply` (`supply_id`,`supply_location`,`supply_date`,`supply_quantity`,`supply_sold`) VALUES (1,'store','2019-08-24','5','2');
INSERT INTO `book_store`.`supply` (`supply_id`,`supply_location`,`supply_date`,`supply_quantity`,`supply_sold`) VALUES (2,'store','2014-07-09','8','5');
INSERT INTO `book_store`.`supply` (`supply_id`,`supply_location`,`supply_date`,`supply_quantity`,`supply_sold`) VALUES (3,'none','2004-01-13','1','3');
INSERT INTO `book_store`.`supply` (`supply_id`,`supply_location`,`supply_date`,`supply_quantity`,`supply_sold`) VALUES (4,'storage','2020-05-16','4','25');
INSERT INTO `book_store`.`supply` (`supply_id`,`supply_location`,`supply_date`,`supply_quantity`,`supply_sold`) VALUES (5,'storage','2017-03-04','9','6');
INSERT INTO `book_store`.`supply` (`supply_id`,`supply_location`,`supply_date`,`supply_quantity`,`supply_sold`) VALUES (6,'store','2007-02-12','3','15');
INSERT INTO `book_store`.`supply` (`supply_id`,`supply_location`,`supply_date`,`supply_quantity`,`supply_sold`) VALUES (7,'store','2018-02-15','2','9');
INSERT INTO `book_store`.`supply` (`supply_id`,`supply_location`,`supply_date`,`supply_quantity`,`supply_sold`) VALUES (8,'none','2011-09-28','1','8');
INSERT INTO `book_store`.`supply` (`supply_id`,`supply_location`,`supply_date`,`supply_quantity`,`supply_sold`) VALUES (9,'store','2020-12-25','7','21');
INSERT INTO `book_store`.`supply` (`supply_id`,`supply_location`,`supply_date`,`supply_quantity`,`supply_sold`) VALUES (10,'storage','2019-01-13','6','0');

INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (1,'kobi','afllalo','afula',1);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (2,'harry','potter','london',2);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (3,'guy','obama','ramt gan',3);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (4,'keren','trump','paris',4);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (5,'danit','sendler','hollywood',5);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (6,'opal','zara','tel aviv',6);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (7,'will','smith','hifa',7);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (8,'moshe','levy','hollywood',8);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (9,'nahman','nahamani','bnei brak',9);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (10,'eithan','wayman','jerusalem',10);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (11,'rotem','romano','tel aviv',1);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (12,'nettta','menashe','beer sheva',2);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (13,'guy','menashe','herzelia',3);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (14,'alon','motchan','ein vered',4);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (15,'tomer','motchan','tel aviv',5);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (16,'ron','stanislav','oxford',6);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (17,'kelly','slater','chicago',7);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (18,'gilad','lavi','avigdor',8);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (19,'sagi','grober',' maoz aviv',9);
INSERT INTO `book_store`.`person` (`person_id`,`person_first_name`,`person_last_name`,`person_address`,`phone_id`) VALUES (20,'dean','norman','santiago',10);

INSERT INTO `book_store`.`book` (`book_id`,`book_title`,`book_author`,`book_details_id`,`supply_id`) VALUES (1,'love','Dekel Menashe',1,1);
INSERT INTO `book_store`.`book` (`book_id`,`book_title`,`book_author`,`book_details_id`,`supply_id`) VALUES (2,'tree love','Gilad Salzmann',4,2);
INSERT INTO `book_store`.`book` (`book_id`,`book_title`,`book_author`,`book_details_id`,`supply_id`) VALUES (3,'shapes','Guy Sharir',2,4);
INSERT INTO `book_store`.`book` (`book_id`,`book_title`,`book_author`,`book_details_id`,`supply_id`) VALUES (4,'counting stars','Opal paltzman',6,3);
INSERT INTO `book_store`.`book` (`book_id`,`book_title`,`book_author`,`book_details_id`,`supply_id`) VALUES (5,'red flowers','Keren Helpert',5,6);
INSERT INTO `book_store`.`book` (`book_id`,`book_title`,`book_author`,`book_details_id`,`supply_id`) VALUES (6,'superman','Danit Yehzkal',4,5);
INSERT INTO `book_store`.`book` (`book_id`,`book_title`,`book_author`,`book_details_id`,`supply_id`) VALUES (7,'the play book','Or Levi',10,7);
INSERT INTO `book_store`.`book` (`book_id`,`book_title`,`book_author`,`book_details_id`,`supply_id`) VALUES (8,'songs','Bar Refali',9,8);
INSERT INTO `book_store`.`book` (`book_id`,`book_title`,`book_author`,`book_details_id`,`supply_id`) VALUES (9,'how to lose a guy','Noa Kiral',8,9);
INSERT INTO `book_store`.`book` (`book_id`,`book_title`,`book_author`,`book_details_id`,`supply_id`) VALUES (10,'twilight','Adam Levin',7,10);

INSERT INTO `book_store`.`publisher` (`publisher_id`,`publisher_translator_name`,`publisher_name`,`publisher_year`,`book_id`) VALUES (1,'Sivan Salzmann','ADF','2020',1);
INSERT INTO `book_store`.`publisher` (`publisher_id`,`publisher_translator_name`,`publisher_name`,`publisher_year`,`book_id`) VALUES (2,'Dekel Menashe','DFG','2020',2);
INSERT INTO `book_store`.`publisher` (`publisher_id`,`publisher_translator_name`,`publisher_name`,`publisher_year`,`book_id`) VALUES (3,'Sarit Salzmann','LLL','2019',2);
INSERT INTO `book_store`.`publisher` (`publisher_id`,`publisher_translator_name`,`publisher_name`,`publisher_year`,`book_id`) VALUES (4,'Matan Slook','ADF','2018',3);
INSERT INTO `book_store`.`publisher` (`publisher_id`,`publisher_translator_name`,`publisher_name`,`publisher_year`,`book_id`) VALUES (5,'Zac Efron','SST','2020',4);
INSERT INTO `book_store`.`publisher` (`publisher_id`,`publisher_translator_name`,`publisher_name`,`publisher_year`,`book_id`) VALUES (6,'Sivan Salzmann','SSC','2020',8);
INSERT INTO `book_store`.`publisher` (`publisher_id`,`publisher_translator_name`,`publisher_name`,`publisher_year`,`book_id`) VALUES (7,'Rotem Sela','FTL','2018',5);
INSERT INTO `book_store`.`publisher` (`publisher_id`,`publisher_translator_name`,`publisher_name`,`publisher_year`,`book_id`) VALUES (8,'Gal Gadot','NBA','2020',6);
INSERT INTO `book_store`.`publisher` (`publisher_id`,`publisher_translator_name`,`publisher_name`,`publisher_year`,`book_id`) VALUES (9,'David Levi','NBA','2019',7);
INSERT INTO `book_store`.`publisher` (`publisher_id`,`publisher_translator_name`,`publisher_name`,`publisher_year`,`book_id`) VALUES (10,'Katy Jeckson','SSC','2019',9);

INSERT INTO `book_store`.`employee` (`employee_id`,`employee_working_hours`,`person_id`) VALUES (1,'56',1);
INSERT INTO `book_store`.`employee` (`employee_id`,`employee_working_hours`,`person_id`) VALUES (2,'22',2);
INSERT INTO `book_store`.`employee` (`employee_id`,`employee_working_hours`,`person_id`) VALUES (3,'160',3);
INSERT INTO `book_store`.`employee` (`employee_id`,`employee_working_hours`,`person_id`) VALUES (4,'143',4);
INSERT INTO `book_store`.`employee` (`employee_id`,`employee_working_hours`,`person_id`) VALUES (5,'87',5);
INSERT INTO `book_store`.`employee` (`employee_id`,`employee_working_hours`,`person_id`) VALUES (6,'44',6);
INSERT INTO `book_store`.`employee` (`employee_id`,`employee_working_hours`,`person_id`) VALUES (7,'124',7);
INSERT INTO `book_store`.`employee` (`employee_id`,`employee_working_hours`,`person_id`) VALUES (8,'98',8);
INSERT INTO `book_store`.`employee` (`employee_id`,`employee_working_hours`,`person_id`) VALUES (9,'14',9);
INSERT INTO `book_store`.`employee` (`employee_id`,`employee_working_hours`,`person_id`) VALUES (10,'130',10);

INSERT INTO `book_store`.`customer` (`customer_id`,`customer_join_date`,`person_id`) VALUES (1,'2020-06-01',20);
INSERT INTO `book_store`.`customer` (`customer_id`,`customer_join_date`,`person_id`) VALUES (2,'2018-12-08',19);
INSERT INTO `book_store`.`customer` (`customer_id`,`customer_join_date`,`person_id`) VALUES (3,'1993-11-09',18);
INSERT INTO `book_store`.`customer` (`customer_id`,`customer_join_date`,`person_id`) VALUES (4,'2003-07-30',17);
INSERT INTO `book_store`.`customer` (`customer_id`,`customer_join_date`,`person_id`) VALUES (5,'2019-01-22',16);
INSERT INTO `book_store`.`customer` (`customer_id`,`customer_join_date`,`person_id`) VALUES (6,'2007-08-23',15);
INSERT INTO `book_store`.`customer` (`customer_id`,`customer_join_date`,`person_id`) VALUES (7,'2019-09-19',14);
INSERT INTO `book_store`.`customer` (`customer_id`,`customer_join_date`,`person_id`) VALUES (8,'2019-12-09',13);
INSERT INTO `book_store`.`customer` (`customer_id`,`customer_join_date`,`person_id`) VALUES (9,'2002-04-28',12);
INSERT INTO `book_store`.`customer` (`customer_id`,`customer_join_date`,`person_id`) VALUES (10,'2020-01-13',11);

INSERT INTO `book_store`.`transactions` (`transactions_id`,`transactions_book_sold`,`transactions_price`,`transactions_payment_method`,`customer_id`,`transaction_date`,`employee_id`) VALUES (1,'2','134','credit card',2,'2016-03-11',1);
INSERT INTO `book_store`.`transactions` (`transactions_id`,`transactions_book_sold`,`transactions_price`,`transactions_payment_method`,`customer_id`,`transaction_date`,`employee_id`) VALUES (2,'4','160','Bit',2,'2018-02-15',2);
INSERT INTO `book_store`.`transactions` (`transactions_id`,`transactions_book_sold`,`transactions_price`,`transactions_payment_method`,`customer_id`,`transaction_date`,`employee_id`) VALUES (3,'11','256','Bit',8,'2020-06-25',3);
INSERT INTO `book_store`.`transactions` (`transactions_id`,`transactions_book_sold`,`transactions_price`,`transactions_payment_method`,`customer_id`,`transaction_date`,`employee_id`) VALUES (4,'1','34','bank transfer',10,'2007-12-01',4);
INSERT INTO `book_store`.`transactions` (`transactions_id`,`transactions_book_sold`,`transactions_price`,`transactions_payment_method`,`customer_id`,`transaction_date`,`employee_id`) VALUES (5,'1','99','Bit',6,'2011-04-01',5);
INSERT INTO `book_store`.`transactions` (`transactions_id`,`transactions_book_sold`,`transactions_price`,`transactions_payment_method`,`customer_id`,`transaction_date`,`employee_id`) VALUES (6,'13','255','credit card',2,'2010-11-12',6);
INSERT INTO `book_store`.`transactions` (`transactions_id`,`transactions_book_sold`,`transactions_price`,`transactions_payment_method`,`customer_id`,`transaction_date`,`employee_id`) VALUES (7,'3','222','Bit',1,'2012-11-10',7);
INSERT INTO `book_store`.`transactions` (`transactions_id`,`transactions_book_sold`,`transactions_price`,`transactions_payment_method`,`customer_id`,`transaction_date`,`employee_id`) VALUES (8,'4','112','credit card',3,'2017-07-04',8);
INSERT INTO `book_store`.`transactions` (`transactions_id`,`transactions_book_sold`,`transactions_price`,`transactions_payment_method`,`customer_id`,`transaction_date`,`employee_id`) VALUES (9,'6','345','bank transfer',2,'2005-10-15',9);
INSERT INTO `book_store`.`transactions` (`transactions_id`,`transactions_book_sold`,`transactions_price`,`transactions_payment_method`,`customer_id`,`transaction_date`,`employee_id`) VALUES (10,'6','321','bank transfer',1,'2016-09-03',10);
INSERT INTO `book_store`.`transactions` (`transactions_id`,`transactions_book_sold`,`transactions_price`,`transactions_payment_method`,`customer_id`,`transaction_date`,`employee_id`) VALUES (11,'6','200','bank transfer',2,'2020-09-03',10);
INSERT INTO `book_store`.`transactions` (`transactions_id`,`transactions_book_sold`,`transactions_price`,`transactions_payment_method`,`customer_id`,`transaction_date`,`employee_id`) VALUES (12,'6','100','credit card',3,'2020-08-03',10);
INSERT INTO `book_store`.`transactions` (`transactions_id`,`transactions_book_sold`,`transactions_price`,`transactions_payment_method`,`customer_id`,`transaction_date`,`employee_id`) VALUES (13,'6','321','Bit',4,'2020-02-03',10);

INSERT INTO `book_store`.`_order` (`order_id`,`order_date`,`order_date_arrive`,`customer_id`,`book_id`,`transactions_id`) VALUES (1,'2018-02-15','2018-02-15',2,2,8);
INSERT INTO `book_store`.`_order` (`order_id`,`order_date`,`order_date_arrive`,`customer_id`,`book_id`,`transactions_id`) VALUES (2,'2020-04-01','2020-06-01',1,3,9);
INSERT INTO `book_store`.`_order` (`order_id`,`order_date`,`order_date_arrive`,`customer_id`,`book_id`,`transactions_id`) VALUES (3,'2019-02-12','2019-02-20',3,4,1);
INSERT INTO `book_store`.`_order` (`order_id`,`order_date`,`order_date_arrive`,`customer_id`,`book_id`,`transactions_id`) VALUES (4,'2018-07-09','2018-08-09',5,3,6);
INSERT INTO `book_store`.`_order` (`order_id`,`order_date`,`order_date_arrive`,`customer_id`,`book_id`,`transactions_id`) VALUES (5,'2020-08-25','2020-08-27',6,6,10);
INSERT INTO `book_store`.`_order` (`order_id`,`order_date`,`order_date_arrive`,`customer_id`,`book_id`,`transactions_id`) VALUES (6,'2016-11-22','2016-12-22',7,8,7);
INSERT INTO `book_store`.`_order` (`order_id`,`order_date`,`order_date_arrive`,`customer_id`,`book_id`,`transactions_id`) VALUES (7,'2019-12-04','2020-01-04',9,10,3);
INSERT INTO `book_store`.`_order` (`order_id`,`order_date`,`order_date_arrive`,`customer_id`,`book_id`,`transactions_id`) VALUES (8,'2020-03-03','2020-08-03',8,5,6);
INSERT INTO `book_store`.`_order` (`order_id`,`order_date`,`order_date_arrive`,`customer_id`,`book_id`,`transactions_id`) VALUES (9,'2017-10-15','2017-11-15',10,1,5);
INSERT INTO `book_store`.`_order` (`order_id`,`order_date`,`order_date_arrive`,`customer_id`,`book_id`,`transactions_id`) VALUES (10,'2020-05-16','2020-05-17',4,2,4);


INSERT INTO `book_store`.`buy_book_store` (`buy_book_store_id`,`transactions_id`,`book_id`) VALUES (1,5,2);
INSERT INTO `book_store`.`buy_book_store` (`buy_book_store_id`,`transactions_id`,`book_id`) VALUES (2,6,1);
INSERT INTO `book_store`.`buy_book_store` (`buy_book_store_id`,`transactions_id`,`book_id`) VALUES (3,7,3);
INSERT INTO `book_store`.`buy_book_store` (`buy_book_store_id`,`transactions_id`,`book_id`) VALUES (4,8,1);
INSERT INTO `book_store`.`buy_book_store` (`buy_book_store_id`,`transactions_id`,`book_id`) VALUES (5,10,3);
INSERT INTO `book_store`.`buy_book_store` (`buy_book_store_id`,`transactions_id`,`book_id`) VALUES (6,9,8);
INSERT INTO `book_store`.`buy_book_store` (`buy_book_store_id`,`transactions_id`,`book_id`) VALUES (7,9,8);
INSERT INTO `book_store`.`buy_book_store` (`buy_book_store_id`,`transactions_id`,`book_id`) VALUES (8,5,8);
INSERT INTO `book_store`.`buy_book_store` (`buy_book_store_id`,`transactions_id`,`book_id`) VALUES (9,7,10);
INSERT INTO `book_store`.`buy_book_store` (`buy_book_store_id`,`transactions_id`,`book_id`) VALUES (10,8,9);


INSERT INTO `book_store`.`delivery` (`delivery_id`,`delivery_tracking_number`,`delivery_status`,`post_type_id`,`transactions_id`,`book_id`) VALUES (1,'eg457693y','in preparation',1,2,1);
INSERT INTO `book_store`.`delivery` (`delivery_id`,`delivery_tracking_number`,`delivery_status`,`post_type_id`,`transactions_id`,`book_id`) VALUES (2,'e4684346u','sent',2,3,2);
INSERT INTO `book_store`.`delivery` (`delivery_id`,`delivery_tracking_number`,`delivery_status`,`post_type_id`,`transactions_id`,`book_id`) VALUES (3,'aa356775u','arrived and waiting for collection',3,2,3);
INSERT INTO `book_store`.`delivery` (`delivery_id`,`delivery_tracking_number`,`delivery_status`,`post_type_id`,`transactions_id`,`book_id`) VALUES (4,'rg357578u','delivered',4,2,4);
INSERT INTO `book_store`.`delivery` (`delivery_id`,`delivery_tracking_number`,`delivery_status`,`post_type_id`,`transactions_id`,`book_id`) VALUES (5,'cs579555h','arrived and waiting for collection',5,1,5);
INSERT INTO `book_store`.`delivery` (`delivery_id`,`delivery_tracking_number`,`delivery_status`,`post_type_id`,`transactions_id`,`book_id`) VALUES (6,'ty675767b','delivered',6,4,6);
INSERT INTO `book_store`.`delivery` (`delivery_id`,`delivery_tracking_number`,`delivery_status`,`post_type_id`,`transactions_id`,`book_id`) VALUES (7,'bd446779d','sent',7,4,7);
INSERT INTO `book_store`.`delivery` (`delivery_id`,`delivery_tracking_number`,`delivery_status`,`post_type_id`,`transactions_id`,`book_id`) VALUES (8,'vb464335z','in preparation',8,11,8);
INSERT INTO `book_store`.`delivery` (`delivery_id`,`delivery_tracking_number`,`delivery_status`,`post_type_id`,`transactions_id`,`book_id`) VALUES (9,'cc355657b','in preparation',9,12,9);
INSERT INTO `book_store`.`delivery` (`delivery_id`,`delivery_tracking_number`,`delivery_status`,`post_type_id`,`transactions_id`,`book_id`) VALUES (10,'bc57499a','sent',10,13,10);


INSERT INTO `book_store`.`store` (`store_id`,`store_book_price_buy`,`store_book_price_sell`,`buy_book_store_id`,`delivery_id`,`supply_id`) VALUES (1,'40','49.99',4,2,1);
INSERT INTO `book_store`.`store` (`store_id`,`store_book_price_buy`,`store_book_price_sell`,`buy_book_store_id`,`delivery_id`,`supply_id`) VALUES (2,'40','59.99',6,3,2);
INSERT INTO `book_store`.`store` (`store_id`,`store_book_price_buy`,`store_book_price_sell`,`buy_book_store_id`,`delivery_id`,`supply_id`) VALUES (3,'20.30','24.99',8,5,3);
INSERT INTO `book_store`.`store` (`store_id`,`store_book_price_buy`,`store_book_price_sell`,`buy_book_store_id`,`delivery_id`,`supply_id`) VALUES (4,'5.20','9.99',5,4,4);
INSERT INTO `book_store`.`store` (`store_id`,`store_book_price_buy`,`store_book_price_sell`,`buy_book_store_id`,`delivery_id`,`supply_id`) VALUES (5,'80','99.99',10,6,5);
INSERT INTO `book_store`.`store` (`store_id`,`store_book_price_buy`,`store_book_price_sell`,`buy_book_store_id`,`delivery_id`,`supply_id`) VALUES (6,'10.10','39.99',1,9,6);
INSERT INTO `book_store`.`store` (`store_id`,`store_book_price_buy`,`store_book_price_sell`,`buy_book_store_id`,`delivery_id`,`supply_id`) VALUES (7,'44','70',2,10,7);
INSERT INTO `book_store`.`store` (`store_id`,`store_book_price_buy`,`store_book_price_sell`,`buy_book_store_id`,`delivery_id`,`supply_id`) VALUES (8,'32','49.49',4,2,8);
INSERT INTO `book_store`.`store` (`store_id`,`store_book_price_buy`,`store_book_price_sell`,`buy_book_store_id`,`delivery_id`,`supply_id`) VALUES (9,'25','35',8,1,9);
INSERT INTO `book_store`.`store` (`store_id`,`store_book_price_buy`,`store_book_price_sell`,`buy_book_store_id`,`delivery_id`,`supply_id`) VALUES (10,'15.25','26.60',7,8,10);

INSERT INTO `book_store`.`store_payment` (`store_payment_id`,`store_payment_electric_bill`,`store_payment_water_bill`,`store_payment_rent`,`store_payment_tax`,`store_payment_other`,`store_payment_home_number`,`store_payment_phone_number`,`store_payment_month`,`store_payment_year`,`store_id`) VALUES (1,'500','544', '150','444','325','44','555','01','2020',3);
INSERT INTO `book_store`.`store_payment` (`store_payment_id`,`store_payment_electric_bill`,`store_payment_water_bill`,`store_payment_rent`,`store_payment_tax`,`store_payment_other`,`store_payment_home_number`,`store_payment_phone_number`,`store_payment_month`,`store_payment_year`,`store_id`) VALUES (2,'322','326' ,'443','567','3321','667','765','01','2005',8);
INSERT INTO `book_store`.`store_payment` (`store_payment_id`,`store_payment_electric_bill`,`store_payment_water_bill`,`store_payment_rent`,`store_payment_tax`,`store_payment_other`,`store_payment_home_number`,`store_payment_phone_number`,`store_payment_month`,`store_payment_year`,`store_id`) VALUES (3,'45556','222' ,'123','1234','234','98','344','01','2016',5);
INSERT INTO `book_store`.`store_payment` (`store_payment_id`,`store_payment_electric_bill`,`store_payment_water_bill`,`store_payment_rent`,`store_payment_tax`,`store_payment_other`,`store_payment_home_number`,`store_payment_phone_number`,`store_payment_month`,`store_payment_year`,`store_id`) VALUES (4,'32211','34', '345','654','654','123','19','01','2018',1);
INSERT INTO `book_store`.`store_payment` (`store_payment_id`,`store_payment_electric_bill`,`store_payment_water_bill`,`store_payment_rent`,`store_payment_tax`,`store_payment_other`,`store_payment_home_number`,`store_payment_phone_number`,`store_payment_month`,`store_payment_year`,`store_id`) VALUES (5,'234','221' ,'332','345','88','36','233','01','2019',2);
INSERT INTO `book_store`.`store_payment` (`store_payment_id`,`store_payment_electric_bill`,`store_payment_water_bill`,`store_payment_rent`,`store_payment_tax`,`store_payment_other`,`store_payment_home_number`,`store_payment_phone_number`,`store_payment_month`,`store_payment_year`,`store_id`) VALUES (6,'677','857', '564','222','77','123','245','01','2014',10);
INSERT INTO `book_store`.`store_payment` (`store_payment_id`,`store_payment_electric_bill`,`store_payment_water_bill`,`store_payment_rent`,`store_payment_tax`,`store_payment_other`,`store_payment_home_number`,`store_payment_phone_number`,`store_payment_month`,`store_payment_year`,`store_id`) VALUES (7,'44','994' ,'876','687','654','654','344','01','2020',9);
INSERT INTO `book_store`.`store_payment` (`store_payment_id`,`store_payment_electric_bill`,`store_payment_water_bill`,`store_payment_rent`,`store_payment_tax`,`store_payment_other`,`store_payment_home_number`,`store_payment_phone_number`,`store_payment_month`,`store_payment_year`,`store_id`) VALUES (8,'3333','333' ,'456','345','987','2345','56','04','2007',4);
INSERT INTO `book_store`.`store_payment` (`store_payment_id`,`store_payment_electric_bill`,`store_payment_water_bill`,`store_payment_rent`,`store_payment_tax`,`store_payment_other`,`store_payment_home_number`,`store_payment_phone_number`,`store_payment_month`,`store_payment_year`,`store_id`) VALUES (9,'988','564' ,'980','987','333','675','457','08','2017',6);
INSERT INTO `book_store`.`store_payment` (`store_payment_id`,`store_payment_electric_bill`,`store_payment_water_bill`,`store_payment_rent`,`store_payment_tax`,`store_payment_other`,`store_payment_home_number`,`store_payment_phone_number`,`store_payment_month`,`store_payment_year`,`store_id`) VALUES (10,'444','222', '123','123','2234','323','788','07','2018',7);

INSERT INTO `book_store`.`book_in_store` (`store_id`,`book_id`,`book_in_store_date`) VALUES (2,3,'2020-10-09');
INSERT INTO `book_store`.`book_in_store` (`store_id`,`book_id`,`book_in_store_date`) VALUES (3,4,'2019-02-11');
INSERT INTO `book_store`.`book_in_store` (`store_id`,`book_id`,`book_in_store_date`) VALUES (5,6,'2016-02-29');
INSERT INTO `book_store`.`book_in_store` (`store_id`,`book_id`,`book_in_store_date`) VALUES (7,8,'2020-08-09');
INSERT INTO `book_store`.`book_in_store` (`store_id`,`book_id`,`book_in_store_date`) VALUES (9,10,'2007-12-23');
INSERT INTO `book_store`.`book_in_store` (`store_id`,`book_id`,`book_in_store_date`) VALUES (4,2,'2018-08-22');
INSERT INTO `book_store`.`book_in_store` (`store_id`,`book_id`,`book_in_store_date`) VALUES (6,5,'2018-03-10');
INSERT INTO `book_store`.`book_in_store` (`store_id`,`book_id`,`book_in_store_date`) VALUES (8,7,'2019-04-05');
INSERT INTO `book_store`.`book_in_store` (`store_id`,`book_id`,`book_in_store_date`) VALUES (10,9,'2009-08-30');
INSERT INTO `book_store`.`book_in_store` (`store_id`,`book_id`,`book_in_store_date`) VALUES (1,1,'2016-10-11');

INSERT INTO `book_store`.`since` (`employee_id`,`seniority_id`) VALUES (1,10);
INSERT INTO `book_store`.`since` (`employee_id`,`seniority_id`) VALUES (2,9);
INSERT INTO `book_store`.`since` (`employee_id`,`seniority_id`) VALUES (3,8);
INSERT INTO `book_store`.`since` (`employee_id`,`seniority_id`) VALUES (4,7);
INSERT INTO `book_store`.`since` (`employee_id`,`seniority_id`) VALUES (5,6);
INSERT INTO `book_store`.`since` (`employee_id`,`seniority_id`) VALUES (6,5);
INSERT INTO `book_store`.`since` (`employee_id`,`seniority_id`) VALUES (7,4);
INSERT INTO `book_store`.`since` (`employee_id`,`seniority_id`) VALUES (8,3);
INSERT INTO `book_store`.`since` (`employee_id`,`seniority_id`) VALUES (9,2);
INSERT INTO `book_store`.`since` (`employee_id`,`seniority_id`) VALUES (10,1);