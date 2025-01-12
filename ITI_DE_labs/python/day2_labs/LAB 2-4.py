# -*- coding: utf-8 -*-
"""
Created on Thu Dec  5 12:28:31 2024

@author: Shehab
"""

"""LAB 2-4
 Write a Python function that encodes a string based on the following rules:
 1.
 Replace each character in the string with its position in the English alphabet (e.g., a -> 1, b -> 2, ..., z -> 26).
 2.
 3.
 4.
 Constraints:
 If the character is uppercase, double its position (e.g., A -> 2, B -> 4, ..., Z -> 52).
 Non-alphabetic characters (such as digits, spaces, punctuation) should be ignored in the output.
 Return the encoded string where each number is separated by a hyphen (-).
 • The input string will only contain printable characters.
 • The function must handle both lowercase and uppercase characters.
 • You arenot allowed to use any Python built-in libraries (e.g., ord, chr) or imported modules.
 Output
 A dictionary with letters as keys and their frequencies as values, sorted by frequency in descending order.
 Input Format:
 A single string s containing any printable characters.
 Output Format:
 A single string containing the encoded values of the characters, separated by hyphens"""
 # In[1]:
sentence =input("enter sentence : ")


def encoded(sentence):
    x= 'the quick brown fox jumps over the lazy dog'
    alp_small=sorted(set(x.replace(" ", "")))
    eng_alp_captital=x.upper()
    alp_captital=sorted(set(eng_alp_captital.replace(" ", "")))
    
    dic={}
    counter =1
    
    for i in alp_small:
        dic[i]=counter
        counter +=1
    
    counter_captital =2
    for i in alp_captital:
        dic[i]=counter_captital
        counter_captital +=2
    #print(dic)
    #print("*"*50)
    
    new_list=[]
    for i in sentence : 
       if  i.isalpha():
           #new_list.append(dic.get(i))
           new_list.append(str(dic.get(i)))
    F="_".join(new_list)
    print(F)
    


encoded(sentence)
   
    
 # In[1]:
    

    
    

    
   
    
   
    
   
    
   
    
   
    
   