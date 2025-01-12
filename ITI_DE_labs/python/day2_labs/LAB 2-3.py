# -*- coding: utf-8 -*-
"""
Created on Wed Dec  4 16:51:32 2024

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
 Expected output: {'e': 3, 'a': 2, 'c': 2, 'i': 2, 'n': 2, 'd': 1, 'f': 1, 's': 1, 't': 1, 'u': 1} """
 # In[1]:
sentence = input("enter sentence : ")



def letter_frequency (sentence):
    
     sorted_sentence = sorted(sentence)
     #print(sorted_sentence)
     dic={}
     dic_sorted={}
     
     for i in sorted_sentence :
        #if i != " " and i not in '0123456789*+-,?!': 
        if  i.isalpha():
            dic[i]=sorted_sentence.count(i)
            
     temp_list=sorted(dic, key=dic.get ,reverse=True)
     for i in temp_list:
         dic_sorted[i]=dic.get(i)
         
     print(dic_sorted)

       
letter_frequency(sentence)
     
     
 # In[1]:

     

     
     
     
     
     
     