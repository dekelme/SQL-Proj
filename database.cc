/*
 * ===================================================================
 *
 *       Filename:  database.cc
 *
 *    Description:  Definition of MySQL Class for accessing database
 *
 *        Created:  Friday 22 February 2013 02:07:49  IST
 *       Compiler:  gcc
 *
 *         Author:  Mandeep Kaur, meghasimak@gmail.com
 *        License:  GNU General Public License
 *      Copyright:  Copyright (c) 2013, Great Developers
 *
 * ===================================================================
 */

/**-------------------------------------------------------------------
 *  Include mysql.h file local header file(declaration of class)
 *------------------------------------------------------------------*/

#include "database.h"

/**
 *--------------------------------------------------------------------
 *       Class:  MySQL
 *      Method:  MySQL :: MySQL()
 * Description:  Constructor to initialize database conectivity
 *--------------------------------------------------------------------
 */

MySQL :: MySQL()
{
    connect = mysql_init(NULL);
    if ( !connect )
    {
        cout << "MySQL Initialization Failed";
    }   

    connect = mysql_real_connect(connect, SERVER, USER, PASSWORD, DATABASE, 0,NULL,0);
    
    if ( connect )
    {
        cout << "Connection Succeeded\n";
    }
    
    else
    {
        cout << "Connection Failed\n";
    }
}

/**
 *--------------------------------------------------------------------
 *       Class:  MySQL
 *      Method:  MySQL :: ShowTables()
 * Description:  Show tables in database
 *--------------------------------------------------------------------
 */

void MySQL :: ShowTables()
{
    /** Add MySQL Query */
    mysql_query (connect,"show tables");                              
                                                                          
    i = 0;
                                                                         
    res_set = mysql_store_result(connect);                              
                                                                          
    unsigned int numrows = mysql_num_rows(res_set);                   
                                                                          
    cout << " Tables in " << DATABASE << " database " << endl;        
                                                                         
    while (((row=mysql_fetch_row(res_set)) != NULL))
    {                                                                 
        cout << row[i] << endl;                                       
    }
    cin.get();
}

/**
 *--------------------------------------------------------------------
 *       Class:  MySQL
 *      Method:  MySQL :: ~MySQL()
 * Description:  Destructor of MySQL class for closing mysql
 *               connection
 *--------------------------------------------------------------------
 */

MySQL :: ~MySQL()
{
    mysql_close (connect);
}
char* MySQL::stringChar(string a)
{
    char* newChar = new char[a.length() + 1];
    strncpy(newChar, a.c_str(), a.length());
    return newChar;

}
void MySQL::question1()
{
    string first = "SELECT DISTINCT * from book inner join supply on book.supply_id = supply.supply_id and book_title ='";
    string last = "' where supply.supply_location = 'store' or supply.supply_location; ";
    string input;
    cout << "Which book do you want to search in the supply" << endl;
    cin >> input;
    first = first + input + last;
    char* all = stringChar(first);
    mysql_query(connect, all);
    delete all;

}

void MySQL::question2()
{
    string first = "select person_first_name,person_last_name,min(customer_join_date) from customer inner join person on person.person_id = customer.person_id; ";
    char* all = stringChar(first);
    cout << "Who is the oldest customer?" << endl;
    mysql_query(connect, all);
    delete all;
}

void MySQL::question3()
{
    string first = "select book_title,book_author,min(supply_date) from supply inner join book on supply.supply_id = book.supply_id where supply_location = 'store' or supply_location = 'storage'; ";
    char* all = stringChar(first);
    cout << "What is the oldest book?" << endl;
    mysql_query(connect, all);
    delete all;
}
void MySQL::question4()
{
    string first = "select book.book_title,book.book_author,person_first_name,person_last_name,order_date from _order inner join book on _order.book_id = book.book_id inner join customer on customer.customer_id = _order.customer_id inner join person on person.person_id = customer.person_id order by order_date; ";
    char* all = stringChar(first);
    cout << "Current order list" << endl;
    mysql_query(connect, all);
    delete all;
}

void MySQL::question5()
{
    string first = "select book_title,book_author,count(book.book_title) from book inner join buy_book_store on book.book_id = buy_book_store.book_id and book.book_title = '";
    string input;
    string last = "';";
    cout << "Enter a book name to check how many copies sold:" << endl;
    cin >> input;
    first = first + input + last;
    char* all = stringChar(first);
    mysql_query(connect, all);
    delete all;
}
void MySQL::question6()
{
    string first = "SELECT  book.book_author, max(supply.supply_sold) FROM    book INNER JOIN _order ON book.book_id = _order.order_id INNER JOIN supply ON book.supply_id = supply.supply_id WHERE   supply.supply_date BETWEEN '";
    string input;
    string input2;
    string sec = "' AND '";
    string last = "';";
    cout << "Most comment author between Enter start date: YYYY-MM-DD" << endl;
    cin >> input;
    cout << "Enter end date:" << endl;
    cin >> input2;
    first = first + input + input2 + last;
    char* all = stringChar(first);
    mysql_query(connect, all);
    delete all;
}

void MySQL::question7()
{
    string first = "select person.person_first_name,person.person_last_name,sum(transactions.transactions_book_sold)   from transactions inner join customer on transactions.customer_id = customer.customer_id inner join person on person.person_id = customer.person_id group by transactions.customer_id order by sum(transactions.transactions_book_sold) desc limit 3; ";
    char* all = stringChar(first);
    cout << "The 3 customers how brought the most books over the years are:" << endl;
    mysql_query(connect, all);
    delete all;
}

void MySQL::question8()
{
    string first = "SELECT		book.book_title,publisher.publisher_translator_name , count(publisher.publisher_translator_name)  FROM 		book INNER JOIN	supply ON supply.supply_id = book.supply_id and supply.supply_location = 'store' or supply.supply_location = 'storge' INNER JOIN publisher ON publisher.book_id = publisher.publisher_id GROUP BY		publisher.publisher_translator_name ORDER BY count(publisher.publisher_translator_name) desc limit 1; ";
    char* all = stringChar(first);
    cout << "The author with the most translations versions (in stock) is:" << endl;
    mysql_query(connect, all);
    delete all;
}

void MySQL::question9()
{
    string first = "select book.book_title,transaction_date,store.store_book_price_sell from transactions inner join customer on customer.customer_id = transactions.customer_id inner join person on person.person_id = customer.person_id inner join delivery on delivery.transactions_id = transactions.transactions_id inner join buy_book_store on buy_book_store.transactions_id = transactions.transactions_id inner join book on book.book_id = buy_book_store.book_id or book.book_id = delivery.book_id inner join store on store.buy_book_store_id = buy_book_store.buy_book_store_id or store.delivery_id = delivery.delivery_id where person.person_first_name = '";
    string sec = "' and person.person_last_name = '";
    string input;
    string input2;
    string last = "' group by book_title order by transactions.transaction_date;";
    cout << " Customer Purchase history. Please enter first name: " << endl;
    cin >> input;
    cout << "Please enter last name: " << endl;
    cin >> input2;
    first = first + input + input2 + last;
    char* all = stringChar(first);
    mysql_query(connect, all);
    delete all;
}

void MySQL::question10()
{
    string first = "select person.person_first_name,person.person_last_name,book.book_title, order_date,supply.supply_location, transactions.transactions_id from _order INNER JOIN customer ON customer.customer_id = _order.customer_id inner join person on person.person_id = customer.person_id INNER JOIN book ON book.book_id = _order.book_id INNER JOIN supply ON supply.supply_id = book.supply_id INNER JOIN buy_book_store ON buy_book_store.book_id = book.book_id INNER JOIN delivery ON delivery.book_id = book.book_id INNER JOIN transactions on customer.customer_id = transactions.customer_id where customer.customer_id = '";
    string input;
    string last = "' and supply.supply_location = 'store' or supply.supply_location = 'storge' group by order_id order by order_date; ";
    cout << "Enter a customer ID to see purchase by date:" << endl;
    cin >> input;
    first = first + input + last;
    char* all = stringChar(first);
    mysql_query(connect, all);
    delete all;
}

void MySQL::question11()
{
    string first = "select distinct delivery_tracking_number,book.book_author, book_details.book_details_book_weight, book_details_book_weight * 2 as delivery_price from delivery inner join book on book.book_id = delivery.book_id inner join book_details on book_details.book_details_id = book_details.book_details_id where book_title = '";
    string last = "' group by delivery_id; ";
    string input;
    char* tmp = stringChar(input);
    while (strcmp(tmp , 0) !=0 )
    {
        cout << "Calculte shipping: please enter a book title, enter 0 to finish:" << endl;
        cin >> input;
        first = first + input + last;
        char* all = stringChar(first);
        mysql_query(connect, all);
        delete all;
    }
    delete tmp;
}


void MySQL::question12()
{
    string first = "select person.person_first_name,person.person_last_name ,transaction_date, transactions_price, transactions_book_sold, delivery.delivery_id, count(delivery.delivery_id) from transactions inner join customer on customer.customer_id = transactions.customer_id inner join person on person.person_id = customer.person_id inner join delivery on delivery.transactions_id = transactions.transactions_id where  customer.customer_id =";
    string last = " group by transactions.transactions_id having count(delivery.delivery_id) > 1; ";
    string input;
    cout << "check if customer split his delivery. please enter ID: nn" << endl;
    cin >> input;
    first = first + input + last;
    char* all = stringChar(first);
    mysql_query(connect, all);
    delete all;
}

void MySQL::question13()
{
    string first = "select delivery_status from delivery where delivery_tracking_number = '";
    string input;
    string last = "'; ";
    cout << "Enter a tracking number to see delivery status:" << endl;
    cin >> input;
    first = first + input + last;
    char* all = stringChar(first);
    mysql_query(connect, all);
    delete all;
}

void MySQL::question14()
{
    string first = "select month(transaction_date),transactions_book_sold,sum(transactions_price) from transactions inner join delivery on delivery.transactions_id = transactions.transactions_id inner join post_type on delivery.post_type_id = post_type.post_type_id where post_type_company = 'Xpress' and month(transaction_date) =";
    string last= ";";
    string input;
    cout << "Summery of Xpress shipping by month, please enter a month number: mm" << endl;
    cin >> input;
    first = first + input + last;
    char* all = stringChar(first);
    mysql_query(connect, all);
    delete all;
}

void MySQL::question15()
{
    string first = "select *, sum(transactions_price) from transactions  WHERE transactions_payment_method = 'Bit' and month(transaction_date) = ";   
    string last = ";";
    string input;
    cout << "Summery of money transfer by Bit for a month, please enter month number: mm" << endl;
    cin >> input;
    first = first + input + last;
    char* all = stringChar(first);
    mysql_query(connect, all);
    delete all;
}

void MySQL::question16()
{
    string first = "select transactions.transactions_id,transactions.transactions_book_sold,transactions.transaction_date, sum(store_book_price_sell - store_book_price_buy) as sum_transactions from store INNER JOIN buy_book_store ON buy_book_store.buy_book_store_id = store.buy_book_store_id INNER JOIN delivery ON delivery.delivery_id = store.delivery_id INNER JOIN transactions ON delivery.transactions_id = transactions.transactions_id or buy_book_store.transactions_id = transactions.transactions_id group by store_id having transaction_date >= date_sub(now(), interval 12 month) and sum_transactions > (select avg(store_book_price_sell - store_book_price_buy) as avg_store from store)";
    char* all = stringChar(first);
    cout << "Transactions from the last 12 month with profit more then avrage by month" << endl;
    mysql_query(connect, all);
    delete all;
}

void MySQL::question17()
{
    string first = "select post_type_company,count(post_type_company) FROM post_type INNER JOIN	delivery ON post_type.post_type_id = delivery.post_type_id INNER JOIN transactions ON  transactions.transactions_id = delivery.transactions_id where transaction_date >= date_sub(now(), interval 12 month) group by post_type_company;";
    char* all = stringChar(first);
    cout << "Number of shipping in the last 12 month by company:" << endl;
    mysql_query(connect, all);
    delete all;
}

void MySQL::question18()
{
    string first = "select count(publisher_name),delivery_id,book_title,publisher_name from delivery INNER JOIN	book ON delivery.book_id = book.book_id INNER JOIN	publisher ON book.book_id = publisher.book_id group by book_title having count(publisher_name) > 1; ";
    char* all = stringChar(first);
    cout << "Details about shipping with the same book with at least 2 diffrent editions: " << endl;
    mysql_query(connect, all);
    delete all;
}

void MySQL::question19()
{
    string first = "select person_first_name,person_last_name from transactions inner join customer on transactions.customer_id = customer.customer_id inner join person on customer.person_id = person.person_id where transaction_date < '2018-07-30' group by person.person_id; ";
    char* all = stringChar(first);
    cout << "Details about customer how purchase in the past but didn't purchase in the last 2 years: " << endl;
    mysql_query(connect, all);
    delete all;
}

void MySQL::question20()
{
    string first = "select person.person_first_name,person.person_last_name, DATEDIFF(order_date_arrive, transactions.transaction_date) from _order inner join customer on _order.customer_id = customer.customer_id inner join person on person.person_id = customer.person_id inner join transactions on transactions.transactions_id = _order.transactions_id where DATEDIFF(order_date_arrive, transactions.transaction_date) > 14; ";
    char* all = stringChar(first);
    cout << "List of customers orders, books have arrived to the store, and waiting for customer pickup" << endl;
    mysql_query(connect, all);
    delete all;
}

void MySQL::question21()
{
    string first = "SELECT supply_location,YEAR(supply_date),MONTH(supply_date),sum(supply_quantity) FROM supply where supply_location = 'storage' GROUP BY YEAR(supply_date), MONTH(supply_date) ORDER BY YEAR(supply_date); ";
    char* all = stringChar(first);
    cout << "Number of books at storage per month:" << endl;
    mysql_query(connect, all);
    delete all;
}

void MySQL::question22()
{
    string first = "select book_in_store_date between '";
    string sec = "' and '";
    string thr = "', count(book.book_id), sum(store.store_book_price_buy) from book_in_store inner join store on store.store_id = book_in_store.store_id inner join book on book.book_id = book_in_store.book_id where book_in_store_date between '";
    string fo = "' and '";
    string last = "';";
    string input;
    string input2;
    cout << " Store book purchase between dates. Please enter first date:yyyy-mm=dd " << endl;
    cin >> input;
    cout << "Please enter second date: " << endl;
    cin >> input2;
    first = first + input +sec + input2 + thr+ input + fo + input2 + last;
    char* all = stringChar(first);
    mysql_query(connect, all);
    delete all;
}

void MySQL::question22a()
{
    string first = "select sum_pay_month,sum_sell_month,sum_sell_month-sum_pay_month as profit from (select sum(store_payment_electric_bill) + sum(store_payment_water_bill) + sum(store_payment_rent) + sum(store_payment_tax) + sum(store_payment_other) + sum(store_payment_home_number) + sum(store_payment_phone_number) AS sum_pay_month, sum(store_book_price_sell) - sum(store_book_price_buy) + sum(transactions_price) AS sum_sell_month from store_payment inner join store on store_payment.store_id = store.store_id inner join buy_book_store on buy_book_store.buy_book_store_id = store.buy_book_store_id inner join delivery on delivery.delivery_id = store.delivery_id inner join transactions on transactions.transactions_id = delivery.transactions_id or buy_book_store.transactions_id = transactions.transactions_id where store_payment_month = ";
    string last = " and store_payment_year = 2007) as a; ";
    string input;
    cout << "Choose a month to see store profit: mm" << endl;
    cin >> input;
    first = first + input + last;
    char* all = stringChar(first);
    mysql_query(connect, all);
    delete all;
}

void MySQL::question23()
{
    string first = "SELECT YEAR(transaction_date),MONTH(transaction_date), AVG(transactions_price) FROM transactions GROUP BY YEAR(transaction_date), MONTH(transaction_date) ORDER BY YEAR(transaction_date); ";
    char* all = stringChar(first);
    cout << "avrage of transactions per month:" << endl;
    mysql_query(connect, all);
    delete all;
}

void MySQL::question24()
{
    string first = "select person_first_name, person_last_name, sum(employee_working_hours)*30 from person INNER JOIN employee ON person.person_id = employee.person_id WHERE person.person_first_name = '";
    string sec = "' and person.person_last_name = '";
    string last = "';";
    string input;
    string input2;
    cout << "Enter an employee to see month paycheck,first name: " << endl;
    cin >> input;
    cout << "last name: " << endl;
    cin >> input2;
    first = first + input + sec + input2 + last;
    char* all = stringChar(first);
    mysql_query(connect, all);
    delete all;
}


void MySQL::question25()
{
    string first = "select person_first_name,person_last_name,count(transactions_id) from person INNER JOIN	employee ON person.person_id = employee.person_id INNER JOIN	transactions ON employee.employee_id = transactions.employee_id where month(transaction_date) ="; 
    string last = "having  max(transactions_id); ";
    string input;
    cout << "Employee with the most transactions per month, please enter month number: mm " << endl;
    cin >> input;
    first = first + input + last;
    char* all = stringChar(first);
    mysql_query(connect, all);
    delete all;
}
