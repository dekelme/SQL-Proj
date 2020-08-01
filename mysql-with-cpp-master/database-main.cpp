/*
 * ===================================================================
 *
 *       Filename:  database-main.cpp
 *
 *    Description:  Main Method
 *
 *        Created:  Thursday 28 February 2013 10:53:59  IST
 *       Compiler:  gcc
 *
 *         Author:  Mandeep Kaur, meghasimak@gmail.com
 *        License:  GNU General Public License
 *      Copyright:  Copyright (c) 2013, Great Developers
 *
 * ===================================================================
 */

/**-------------------------------------------------------------------
 *  \mainpage MySQL Connectivity with C++
 *
 *  This is a working code example of using C++ to interface with MySQL.
 *  Steps:                                                                
 *                                                                                                                        
 *  \li Download this code \n
 *      $ git clone https://github.com/megha55/mysql-with-cpp.git
 *
 *  \li For installing MySQL Connector for C++ \n                     
 *      $ make install 
 *
 *  \li Change database details in database-detail.h file.
 *                                                                         
 *  \li To run example \n                                              
 *      $ make 
 * 
 *------------------------------------------------------------------*/

/**-------------------------------------------------------------------
 *  Include required header files
 *------------------------------------------------------------------*/
 
#include "database.h"

int main(void)
{
    MySQL Mysql;
    //Mysql.ShowTables();
    int input;
    cout << "Please choose a question from 1-26:" << endl;
    cin >> input;
    switch (input) {
        case 1:
            Mysql.question1();
            break;
        case 2:
            Mysql.question2();
            break;
        case 3:
            Mysql.question3();
            break;
        case 4:
            Mysql.question4();
            break;
        case 5:
            Mysql.question5();
            break;
        case 6:
            Mysql.question6();
            break;
        case 7:
            Mysql.question7();
            break;
        case 8:
            Mysql.question8();
            break;
        case 9:
            Mysql.question9();
            break;
        case 10:
            Mysql.question10();
            break;
        case 11:
            Mysql.question11();
            break;
        case 12:
            Mysql.question12();
            break;
        case 13:
            Mysql.question13();
            break;
        case 14:
            Mysql.question14();
            break;
        case 15:
            Mysql.question15();
            break;
        case 16:
            Mysql.question16();
            break;
        case 17:
            Mysql.question17();
            break;
        case 18:
            Mysql.question18();
            break;
        case 19:
            Mysql.question19();
            break;
        case 20:
            Mysql.question20();
            break;
        case 21:
            Mysql.question21();
            break;
        case 22:
            Mysql.question22();
            break;
        case 23:
            Mysql.question23();
            break;
        case 24:
            Mysql.question24();
            break;
        case 25:
            Mysql.question25();
            break;
        case 26:
            Mysql.question18();
            break;
    }

    return 0;
}
