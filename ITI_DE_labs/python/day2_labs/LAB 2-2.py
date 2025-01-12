# -*- coding: utf-8 -*-
"""
Created on Wed Dec  4 16:32:59 2024

@author: Shehab
"""

"""LAB 2-3
 Write a function letter_frequency that takes a sentence as input and returns a dictionary containing the frequency of each letter in the 
sentence. The function should meet the following requirements:
 1.
 Count only alphabetic characters (ignore numbers, punctuation, spaces, etc.).
 2.
 3.
 Convert all letters to lowercase for case-insensitive counting.
 Sort the dictionary by frequency in descending order. If two letters have the same frequency, they should appear in 
alphabetical order.
 Input Format
 sentence: A string containing the sentence to analyze.
 Output
 A dictionary with letters as keys and their frequencies as values, sorted by frequency in descending order.
 Sample Input 1
 sentence = "Hello World!"
 print(letter_frequency(sentence))
 Sample Output 1
 Expected Output: {'l': 3, 'o': 2, 'd': 1, 'e': 1, 'h': 1, 'r': 1, 'w': 1}
 Sample Input 2
 sentence = "Data Science is fun!”
 print(letter_frequency(sentence))
 Sample Output 2
 Expected output: {'e': 3, 'a': 2, 'c': 2, 'i': 2, 'n': 2, 'd': 1, 'f': 1, 's': 1, 't': 1, 'u': 1} 
 """
# In[1]:
hourly_rate = float(input("enter hourly_rate : ")) 
hours_worked = int(input("enter hours_worked : "))
def calculate_salary(hourly_rate , hours_worked):
    if hours_worked <= 40:
        calculate = hourly_rate * hours_worked
    else:
        over_hours =hours_worked - 40
        calculate = hourly_rate * 40 + hourly_rate *over_hours *1.5        
    return calculate

calculate_salary(hourly_rate,hours_worked)
    
 
    
 
    

    















