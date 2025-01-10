# -*- coding: utf-8 -*-
"""
Created on Mon Dec  2 12:56:40 2024

@author: Shehab
"""

"""LAB 1-3
 Task
 The provided code stub reads two integers from STDIN, and. Add code to print three lines where:
 1.The first line contains the sum of the two numbers.
 2.The second line contains the difference of the two numbers (first - second).
 3.The third line contains the product of the two numbers.
 Constraints
 1<= a < 100
 1<= b < 50
 Example
 a = 3
 b = 5
 Print the following:
 8 -2 
15
"""
# In[1]:
        
def fun_get_two_number():
    number1=int(input("Enter first Num "))
    number2=int(input("Enter second Num "))
    
    fun_check_range(number1,number2)
    
    
def fun_check_range(number1,number2):
    if number1 in range(100) and number1 in range(100):
        print(number1 + number2)
        print(number1 - number2)
        print(number1 * number2)
    else:
        print("place enter vaild range between 0 to 100")
        fun_get_two_number()
        
number1=int(input("Enter first Num"))
number2=int(input("Enter second Num"))
    
if number1 in range(100) and number1 in range(100):
    print(number1 + number2)
    print(number1 - number2)
    print(number1 * number2)
else:
    print("place enter vaild range between 0 to 100")
    fun_get_two_number()


# In[1]:
#another easy solve
number1=int(input("Enter first Num"))
number2=int(input("Enter second Num"))



while number1 >=100 or number1 >=100:
    print("place enter vaild range between 0 to 100")
    number1=int(input("Enter first Num"))
    number2=int(input("Enter second Num"))
else:
    print(number1 + number2)
    print(number1 - number2)
    print(number1 * number2)
    
