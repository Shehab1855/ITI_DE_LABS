# -*- coding: utf-8 -*-
"""
Created on Wed Dec  4 15:28:01 2024

@author: Shehab
"""

"""LAB 2-1
 An extra day is added to the calendar almost every four years as February 29, and the day is called aleap day. It corrects the calendar for 
the fact that our planet takes approximately 365.25 days to orbit the sun. A leap year contains a leap day.
 In the Gregorian calendar, three conditions are used to identify leap years:
 • The year can be evenly divided by 4, is a leap year, unless:
 • The year can be evenly divided by 100, it is NOT a leap year, unless:
 • The year is also evenly divisible by 400. Then it is a leap year.
 This means that in the Gregorian calendar, the years 2000 and 2400 are leap years, while 1800, 1900, 2100, 2200, 2300 and 2500 are 
NOT leap years.
 Task
 Given a year, determine whether it is a leap year. If it is a leap year, return the BooleanTrue, otherwise returnFalse.
 Note that the code stub provided reads from STDIN and passes arguments to theis_leapfunction. It is only necessary to complete 
the is_leap function.
 Input Format
 Readyear, the year to test.
 Constraints
 1900 <= year < 105
 Sample Input 0
 1990 
Sample Output 0
 False 
Explanation 0
 1990 is not a multiple of 4 hence it's not a leap year"""
 
# In[1]:
year = int(input("enter year : "))
while year < 1900:
    year = int(input("enter vailed  year after 1900: "))


    
def is_leapfunction(year:int):
    
    if year % 4 == 0:
        if year % 100 == 0:
            if year % 400 == 0:
               return True, f"{year} is a leap year divisible by 400"
            
               
            else:
                return False, f"{year} is not a leap year divisible by 100 but not by 400."
        else:
            return True, f"{year} is a leap year divisible by 4 but not by 100."
            
        
    else:
        return False, f"{year} is not a leap year not divisible by 4."
        
    
    

is_leapfunction(year)    

    
    
    
    






    