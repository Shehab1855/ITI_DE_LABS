# -*- coding: utf-8 -*-
"""
Created on Tue Dec  3 11:17:12 2024

@author: Shehab
"""

"""LAB 1-6
 You are given a dictionary containing students' names and their corresponding grades. Your task is to:
 1.Identify students who scored above a certain threshold.
 2.Calculate the average score of these students.
 3.Create a new dictionary where the keys are the students' names who scored above the threshold, and the values are their scores 
minus the calculated average (rounded to the nearest integer).
 If no student meets the criteria, print"No students scored above the threshold."
 Example
 grades_dict = { ”Mariam": 85, ”Mohamed": 76,”Amany":90, ”Hossam":88,”Sama": 70 } 
threshold = 80
 Expected output: { " Mariam ": -2, " Amany ": 3, " Hossam ": 1 }
 Input Format
 • A dictionary grades_dict where:
 ➢ Keys are strings representing student names.
 ➢ Values are integers representing their scores (0 ≤ score ≤ 100).
 • An integerthreshold (0 ≤ threshold ≤ 100). 
Constraints
 • The dictionary will contain at least one entry. All student names are unique.
 Output Format
 Print a new dictionary with names of students who scored above the threshold and their adjusted scores. If no students meet the criteria, 
print "No students scored above the threshold."
"""
# In[1]:
student={}
while True :
    name = input("enter student name or 0 to end the program : ")
    if name =='0':
        break
    else:
        grade = int(input("enter scores : "))
        while not(grade >=0 and  grade <=100) :
            grade = int(input("enter scores in range 0 to 100 : "))
        else:    
            student[name] = grade
# In[1]:        
print(student)
new_student_with_threshold = {}
new_student_with_threshold_average = {}
sum_garde =0
counter = 0

threshold =int(input("enter threshold : "))
while not(threshold >=0 and  threshold <=100) :
    threshold = int(input("enter threshold in range 0 to 100 : "))
else:    
    for i, k in student.items():
        if k >= threshold:
            new_student_with_threshold[i]=k
            sum_garde += k
            counter +=1
        average = sum_garde /counter
    for i, k in student.items():
        if k >= threshold:
           new_student_with_threshold_average[i]=k - int(average)           
#1.Identify students who scored above a certain threshold
print(new_student_with_threshold)
# 2.Calculate the average score of these students.
print(average)

#3.Create a new dictionary where the keys are the students' names who scored above the threshold,
#and the values are their scores minus the calculated average (rounded to the nearest integer).
print(new_student_with_threshold_average)




