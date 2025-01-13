# -*- coding: utf-8 -*-
"""
Created on Sat Dec  7 22:52:42 2024

@author: Shehab
"""

"""LAB 3-2
 Task: 
Implement Person and Employee classes class
 1. Implement the Person class: 
➢ Initialize attributes: name, age, address, and phone. 
➢ Method: greet() - Prints "Hello I am [name]". 
➢ Method: is_adult() - Returns True if age > 18, otherwise False. 
➢ Method: contact_details() - Prints address and phone. 
2. Implement the Employee class (inherits from Person): 
➢ Additional attributes: salary, office_address, and office_phone. 
➢ Method: calculate_tax() - Returns 5% of salary if salary >= 5000, else 0. 
➢ Method: contact_details() - Prints personal contact details and office contact details.
 3. Create an Employee object:
 ➢ Name: Jack, Age: 30, Address: D4, XYZ Street, Phone: 994477291 
➢ Salary: 8000, Office Address: ABC Street, Office Phone: 384923993 
4. Display the contact details of the employee. Implement both classes and the specified operations. 
Hint: Use the 'super()' function to call parent class methods when required."""
# In[1]:

class Person:
    def __init__(self,name, age, address, phone):
        self.name = name 
        self.age = age 
        self.address = address
        self.phone = phone 
        
        
        
    def greet(self):
        print(f"Hello I am {self.name}")
        
    def is_adult(self):
        if self.age > 18:
            return True 
        else:
            return False
    def contact_details(self):
        print(f" the address is {self.address} and the phone is {self.phone}")
      
        
class Employee (Person):
    def __init__(self,name, age, address, phone, salary, office_address,office_phone):
        super().__init__(name, age, address, phone)
        self.salary=salary
        self.office_address = office_address
        self.office_phone = office_phone
        
    def  calculate_tax(self):
       if self.salary > 5000:
           self.salary=self.salary*5/100
           return self.salary
       else:
           return 0
     
    def  contact_details(self):
        super().contact_details()
        print(f" the office_address is {self.office_address} and the office_phone is {self.office_phone}")
        
        
x=Employee("Jack", 30, "D4 Street", 994477291, 8000, " ABC Street", 384923993)     
x.contact_details()  
        
        