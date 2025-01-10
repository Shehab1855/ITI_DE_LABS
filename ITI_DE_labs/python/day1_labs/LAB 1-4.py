# -*- coding: utf-8 -*-
"""
Created on Mon Dec  2 13:45:24 2024

@author: Shehab
"""

"""LAB 1-4
 Task
 The provided code stub reads and integer n, from STDIN. For all non-negative integersi<n, printi2
 Example
 The list of non-negative integers that are less than n=3 is [0,1,2]. Print the square of each number on a separate line.
 0 
1
 4
 Input Format
 The first and only line contains the integer,n.
 Constraints
 1<= n <= 20
 Output Format
 Print lines, one corresponding to eachi.
 Sample Input 0
 5 
Sample Output 0
 0 
1 
4 
9 
16
"""
# In[1]:
number = int(input("Enter num between 1 to 20 : "))

while number not in range(1,21):
    print("try agin ")
    number = int(input("Enter num between 1 to 20 : "))

else:
    for i in range(number):
        print(i**2)
