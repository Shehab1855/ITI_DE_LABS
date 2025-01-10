# -*- coding: utf-8 -*-
"""
Created on Mon Dec  2 13:53:32 2024

@author: Shehab
"""

"""LAB 1-5
 Given the names and grades for each student in a class of N students, store them in a nested list and print the name(s) of any student(s) 
having the second lowest grade.
 Note: If there are multiple students with the second lowest grade, order their names alphabetically and print each name on a new line.
 Example
 recordes = [[‘chi’,20],[‘beta’,50],[‘alpha’,50]]
 The ordered list of scores is [20, 50], so the second lowest score is 50. 
There are two students with that score:[’beta’, ‘alpha’]. 
Ordered alphabetically, the names are printed as:
 alpha 
beta 
Input Format
 The first line contains an integer, N, the number of students.
 The2N subsequent lines describe each student over 2 lines.- The first line contains a student's name.- The second line contains their grade.
 Constraints
 • 2<=N<=5
 • There will always be one or more students having the second lowest grade.
 Output Format
 Sample Input 0
 5 
Harry 
37.21 
Berry 
37.21 
Tina 
37.2 
Akriti 
41 
Harsh 
39
 Sample Output 0
 Berry 
Harry
 Print the name(s) of any student(s) having the second lowest grade in. If there are multiple students, order their names alphabetically and 
print each one on a new line
"""
# In[1]:
number_of_student = int(input("Enter number of student 2 to 5 : "))
lst1=[]
lst2=[]
while number_of_student not in range(2,6):
    print("not vailed input ")
    number_of_student = int(input("Enter number of student 2 to 5 : "))
else:
    for i in range(number_of_student):
      lst1=[]
      name=input("enter name ")
      grade=int(input("enter grade "))
      
      lst1 +=[name,grade]
      lst2.append(lst1)
      del lst1            
            
print(lst2)


# In[1]:
 
lst_name=[]
lst_garde=[]
for i in lst2:
   for x in i:
      if type(x) == str:
          lst_name +=[x]
      else:
          lst_garde +=[x]
        
print(lst_name)
print(lst_garde)



# In[1]:

a=min(lst_garde)
print(a)
lst_garde.remove(a)
b=min(lst_garde)
print(b)

# In[1]:
name_list=[]
for i in lst2:
    if i[1]== a or i[1]== b:
       name_list += [i[0]]
       
sort_name =sorted(name_list)

for i in sort_name:
    print(i)
