# -*- coding: utf-8 -*-
"""
Created on Mon Dec  9 14:06:35 2024

@author: Shehab
"""

"""LAB 2-4
 Write a function days_until_birthdaythat takes two arguments: birth_date andcurrent_date. Both arguments should be in the 
format "YYYY-MM-DD". The function should calculate and return the number of days left until the next birthday based on the birth_date.
 If the birthday is today, the function should return0.
 Input Format
 • birth_date: A string in the format "YYYY-MM-DD" representing the user's birth date.
 • current_date: A string in the format "YYYY-MM-DD" representing the current date.
 Output
 • An integer representing the number of days until the next birthday.
 Sample Input 1
 days_until_birthday("1995-06-15", "2024-06-01")
 Sample Output 1
 Expected output: 14
 Sample Input 2
 days_until_birthday("1995-11-11", "2024-11-11")
 Sample Output 2
 Expected output: 0
 Sample Input 3
 days_until_birthday("1995-12-25", "2024-12-20")
 Sample Output 3
 Expected output: 5"""
 
# In[1]:
from datetime import datetime
def days_until_birthday( birth_date, current_date):
    
    birth_date = datetime.strptime(birth_date,"%Y-%m-%d")
    current_date = datetime.strptime(current_date,"%Y-%m-%d")
    
    # #birth_date
    # birth_date_year  = birth_date.year
    # birth_date_month = birth_date.month
    # birth_date_day   = birth_date.day
    
    # #current_date
    # current_date_year  = current_date.year
    # current_date_month = current_date.month
    # current_date_day   = current_date.day
    
    if  current_date.year >= birth_date.year:
        if current_date.month >= birth_date.month:
            num_month = current_date.month - birth_date.month
            if current_date.day >= birth_date.day:
                num_day = current_date.day - birth_date.day
                result = num_month*30 + num_day
            else:
                num_month -=1
                num_day = current_date.day +30 - birth_date.day
                result = num_month*30 + num_day
                
        elif current_date.month < birth_date.month :
            num_month = current_date.month*12 - birth_date.month
            if current_date.day >= birth_date.day:
                num_day = current_date.day - birth_date.day
                result = num_month*30 + num_day
            else:
                num_month -=1
                num_day = current_date.day +30 - birth_date.day
                result = num_month*30 + num_day
            
           
        print(abs(result) )   
    
days_until_birthday("1995-06-15", "2024-06-01")
days_until_birthday("1995-11-11", "2024-11-11")
days_until_birthday("1995-12-25", "2024-12-20")
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    