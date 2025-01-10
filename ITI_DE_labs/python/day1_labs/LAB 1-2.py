# -*- coding: utf-8 -*-
"""
Created on Mon Dec  2 12:40:38 2024

@author: Shehab
"""

"""LAB 1-2
 The task requires performing conditional actions based on the given integer input. Here are the conditions:
 • If the integer is odd, print "Weird.”
 • If the integer is even and in the inclusive range of 2 to 5, print "Not Weird.”
 • If the integer is even and in the inclusive range of 6 to 20, print "Weird.”
 • If the integer is even and greater than 20, print "Not Weird."
 The program takes a single positive integer as input and outputs whether the number is "Weird" or "Not Weird" based on the conditions.
 Example: 
Input: 3     Output: Weird Explanation: 3 is odd, so it is considered "Weird."
 Input: 24   Output: Not Weird Explanation: 24 is even, and it falls into the range greater than 20, so it is considered "Not Weird.
 """
 # In[1]:
number=int(input("Enter integer number "))

if number %2 != 0:
    print(f' Weird Explanation: {number} is odd, so it is considered "Weird."')
else:
    if number in range(2,5):
        print(f' Not Weird Explanation: {number} is even, and it falls into the range of 2 to 5, so it is considered "Not Weird."')
    elif number in range(6,20):
        print(f' Not Weird Explanation: {number} is even, and it falls into the range of 6 to 20, so it is considered "Not Weird."')
    elif number > 20:
        print(f' Not Weird Explanation: {number} is even, and it falls into the range  greater than 20, so it is considered "Not Weird."')