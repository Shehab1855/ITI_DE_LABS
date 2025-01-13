# -*- coding: utf-8 -*-
"""
Created on Sat Dec  7 22:50:48 2024

@author: Shehab
"""

"""LAB 3-1
 Task: 
Implement a BankAccount class You are tasked to implement a simple BankAccount class in Python. Follow the instructions below to create the class: 
1. The BankAccount class should have the following methods:
 ➢ set_details(self, name, balance=0): 
This method sets the account holder's name and initializes the account balance. 
The balance should default to 0 if not provided. 
➢ display(self): This method should display the account holder's name and current balance. 
➢ withdraw(self, amount):
 This method should deduct the specified `amount` from the account balance.
 ➢ deposit(self, amount): This method should add the specified `amount` to the account balance. 
2. Create two BankAccount objects:
 ➢ Create an object `a1` and set its details to 'Mike' as the account holder's name and 200 as the initial balance.
 ➢ Create another object `a2` and set its details to 'Tom' as the account holder's name with the default balance (0).
 3. After setting up the accounts, perform the following operations:  
➢ Withdraw 100 from account `a1`. 
➢ Deposit 500 into account `a2`. 
4. Display the account details after each operation: 
➢ After the initial setup of accounts `a1` and `a2`.
 ➢ After the withdrawal and deposit operations.
 5. Implement the class and operations within the provided code block. """
# In[1]:

class BankAccount():
    def __init__(self , name, balance=0):
        self.name =name 
        self.balance=balance
    
    def display(self):
        print(f"account name :{self.name} is balance = {self.balance} ")
        
    def withdraw(self, amount):
        if amount <= self.balance:
            self.balance-= amount
        else:
            print(f"{amount } not have in balnce you have {self.balance}")
        
        
    def deposit(self, amount):
        self.balance+= amount
        


a1 = BankAccount("Mike",200)
a1.display()
a2 = BankAccount("Tom")
a2.display()
a1.withdraw(100)
a1.display()
a2.deposit(500)
a2.display()