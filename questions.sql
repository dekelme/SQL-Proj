use book_store;

#1
SELECT DISTINCT supply_location from book 
inner join supply 
on book.supply_id = supply.supply_id 
and book_title='shapes' 
where supply.supply_location='store' or supply.supply_location='storage';

#2
select person_first_name,person_last_name,min(customer_join_date) from customer
inner join person on person.person_id = customer.person_id;

#3
select book_title,book_author,min(supply_date) from supply 
inner join book on supply.supply_id = book.supply_id
where supply_location='store' or supply_location='storage';

#4
select book.book_title,book.book_author,person_first_name,person_last_name,order_date 
from _order 
inner join book on _order.book_id = book.book_id
inner join customer on customer.customer_id = _order.customer_id
inner join person on person.person_id = customer.person_id
order by order_date;

#5
select book_title,book_author,count(book.book_title) 
from book
inner join buy_book_store on book.book_id = buy_book_store.book_id
and book.book_title='love';

#6
SELECT  book.book_author,
        max(supply.supply_sold)
FROM    book 
        INNER JOIN _order 
            ON book.book_id = _order.order_id
        INNER JOIN supply
            ON book.supply_id = supply.supply_id
WHERE   supply.supply_date BETWEEN '2019-01-01 00:00:00' AND '2019-12-29 00:00:00';

#7
select person.person_first_name,person.person_last_name,sum(transactions.transactions_book_sold)  
from transactions
inner join customer on transactions.customer_id = customer.customer_id
inner join person on person.person_id = customer.person_id
group by transactions.customer_id
order by sum(transactions.transactions_book_sold) desc	
limit 3;

#8
SELECT		book.book_title,publisher.publisher_translator_name , count(publisher.publisher_translator_name) 
FROM 		book
			INNER JOIN	supply 
				ON supply.supply_id = book.supply_id and 
                supply.supply_location = 'store' or supply.supply_location = 'storge' 
			INNER JOIN publisher
				ON publisher.book_id = publisher.publisher_id
GROUP BY		publisher.publisher_translator_name
			ORDER BY count(publisher.publisher_translator_name) desc
            limit 1;

#9
select book.book_title,date(transaction_date),store.store_book_price_sell 
from transactions
inner join customer on customer.customer_id = transactions.customer_id
inner join person on person.person_id = customer.person_id
inner join delivery on delivery.transactions_id = transactions.transactions_id
inner join buy_book_store on buy_book_store.transactions_id = transactions.transactions_id
inner join book on book.book_id = buy_book_store.book_id or book.book_id = delivery.book_id
inner join store on store.buy_book_store_id = buy_book_store.buy_book_store_id 
or store.delivery_id = delivery.delivery_id
where person.person_first_name = 'nahman' and person.person_last_name=  'nahamani'
group by book_title
order by transactions.transaction_date;

#10
select person.person_first_name,person.person_last_name,book.book_title, date(order_date),supply.supply_location,
transactions.transactions_id
from _order
INNER JOIN customer ON customer.customer_id = _order.customer_id
inner join person on person.person_id = customer.person_id
INNER JOIN book ON book.book_id = _order.book_id
INNER JOIN supply ON supply.supply_id = book.supply_id
INNER JOIN buy_book_store ON buy_book_store.book_id = book.book_id
INNER JOIN delivery ON delivery.book_id = book.book_id
INNER JOIN transactions on customer.customer_id = transactions.customer_id
where customer.customer_id='2' and supply.supply_location='store' or supply.supply_location='storge' 
group by order_id
order by order_date;

#11
select distinct delivery_tracking_number,book.book_author,
book_details.book_details_book_weight, book_details_book_weight*2 as delivery_price from delivery
inner join book on book.book_id = delivery.book_id
inner join book_details on book_details.book_details_id = book_details.book_details_id
where book_title = 'love'
group by delivery_id;

#12
select person.person_first_name,person.person_last_name ,date(transaction_date),
transactions_price,transactions_book_sold, delivery.delivery_id,
count(delivery.delivery_id)
from transactions
inner join customer on customer.customer_id = transactions.customer_id
inner join person on person.person_id = customer.person_id
inner join delivery on delivery.transactions_id = transactions.transactions_id
where  customer.customer_id=2
group by transactions.transactions_id
#group by delivery.delivery_id
having count(delivery.delivery_id) >1;

#13
select delivery_tracking_number,delivery_status   
from delivery where delivery_tracking_number='aa356775u';

#14
select month(transaction_date),transactions_book_sold,sum(transactions_price) from transactions
inner join delivery on delivery.transactions_id = transactions.transactions_id
inner join post_type on delivery.post_type_id = post_type.post_type_id
where post_type_company = 'Xpress' and month(transaction_date) = 2;

#15
select month(transaction_date), sum(transactions_price) from transactions 
WHERE transactions_payment_method = 'Bit' 
and month(transaction_date) = 11;

#16
select transactions.transactions_id,transactions.transactions_book_sold,transactions.transaction_date,
sum(store_book_price_sell-store_book_price_buy) as sum_transactions from store
INNER JOIN buy_book_store ON buy_book_store.buy_book_store_id = store.buy_book_store_id
INNER JOIN delivery ON delivery.delivery_id = store.delivery_id
INNER JOIN transactions ON delivery.transactions_id = transactions.transactions_id 
or buy_book_store.transactions_id = transactions.transactions_id
group by store_id
having transaction_date >= date_sub(now(), interval 12 month)
and sum_transactions > 
(select avg(store_book_price_sell-store_book_price_buy) as avg_store from store);

#17
select post_type_company,count(post_type_company)
FROM post_type
INNER JOIN	delivery
ON post_type.post_type_id =  delivery.post_type_id
INNER JOIN transactions
ON  transactions.transactions_id= delivery.transactions_id
where transaction_date >= date_sub(now(), interval 12 month)
group by post_type_company;

#18    
select count(publisher_name),delivery_id,book_title,publisher_name from delivery
INNER JOIN	book
		ON delivery.book_id =  book.book_id
INNER JOIN	publisher
		ON book.book_id =  publisher.book_id
group by book_title
having count(publisher_name) > 1;

#19
select person_first_name,person_last_name
from transactions
inner join customer on transactions.customer_id = customer.customer_id
inner join person on customer.person_id = person.person_id
where transaction_date < '2018-07-30' 
group by person.person_id;

#20
select person.person_first_name,person.person_last_name,
DATEDIFF(order_date_arrive, transactions.transaction_date) 
from _order
inner join customer on _order.customer_id = customer.customer_id
inner join person on person.person_id = customer.person_id
inner join transactions on transactions.transactions_id = _order.transactions_id
where DATEDIFF(order_date_arrive, transactions.transaction_date) > 14;

#21
SELECT supply_location,YEAR(supply_date),MONTH(supply_date),sum(supply_quantity)
FROM supply 
where supply_location= 'storage'
GROUP BY YEAR(supply_date),MONTH(supply_date)
ORDER BY YEAR(supply_date);

#22
select book_in_store_date between '2016-10-11 00:00:00' and '2019-02-11 00:00:00',
count(book.book_id ),sum(store.store_book_price_buy)
from book_in_store
inner join store on store.store_id = book_in_store.store_id
inner join book on book.book_id = book_in_store.book_id
where book_in_store_date between '2016-10-11 00:00:00' and '2019-02-11 00:00:00';

#23
select sum_pay_month,sum_sell_month,sum_sell_month-sum_pay_month as profit from
(select sum(store_payment_electric_bill) + sum(store_payment_water_bill) + sum(store_payment_rent) 
+ sum(store_payment_tax)
+ sum(store_payment_other) + sum(store_payment_home_number) + sum(store_payment_phone_number) 
AS sum_pay_month,
sum(store_book_price_sell)-sum(store_book_price_buy) + sum(transactions_price) AS sum_sell_month
from store_payment 
inner join store on store_payment.store_id = store.store_id
inner join buy_book_store on buy_book_store.buy_book_store_id = store.buy_book_store_id
inner join delivery on delivery.delivery_id = store.delivery_id
inner join transactions on transactions.transactions_id = delivery.transactions_id 
or buy_book_store.transactions_id = transactions.transactions_id
where store_payment_month = 4 and store_payment_year = 2007) as a;


#24
SELECT YEAR(transaction_date),MONTH(transaction_date), AVG(transactions_price)
FROM transactions
GROUP BY YEAR(transaction_date),MONTH(transaction_date)
ORDER BY YEAR(transaction_date);

#25
select person_first_name, person_last_name, sum(employee_working_hours)*30 from person
INNER JOIN employee
		ON person.person_id =  employee.person_id
WHERE person.person_first_name= 'keren' and
person.person_last_name= 'trump';

#26
select person_first_name,person_last_name,count(transactions_id) from person
INNER JOIN	employee
				ON person.person_id =  employee.person_id
INNER JOIN	transactions
				ON employee.employee_id =  transactions.employee_id 
where month(transaction_date) = 11
having  max(transactions_id);