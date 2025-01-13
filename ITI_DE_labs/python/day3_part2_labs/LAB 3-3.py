# -*- coding: utf-8 -*-
"""
Created on Sun Dec  8 23:15:37 2024

@author: Shehab
"""

"""LAB 3-3
 Create a class Book that represents a book in a library. Each book should have the following attributes:
 1.
 title: The title of the book (string).
 2.
 3.
 author: The author of the book (string).
 available: A boolean attribute indicating whether the book is available for borrowing.
 Create methods within theBookclass:
 1.
 borrow(): If the book is available, mark it as unavailable and return a message saying the book has been borrowed. If the book 
is already borrowed, return a message saying the book is not available.
 2.
 return_book(): Mark the book as available and return a message saying the book has been returned.
 Next, create a classLibrary that represents a library containing multiple books. The Library class should have the following:
 1.
 An attribute books which is a list to store instances of Book.
 Create methods within theLibrary class:
 1.
 add_book(book): Adds a Bookobject to the library’s book list.
 2.
 list_available_books(): Prints the titles of all books that are currently available."""
 
 
# In[1]:

class Book :

    def __init__(self , title , author , available=True):
        self.title = title
        self.author = author
        self.available = available
        
    def borrow(self):
        if self.available:
            self.available =False
            return f"{self.title} has been borrowed"
        else :
            return f"{self.title} not available"
            
            
    
    def return_book(self):
        self.available = True
        return f"{self.title} has been returned"
    
class Library():
    
    def __init__(self):
        self.book_list=[]
    
    def add_book(self,book):
        self.book_list.append(book)
        
        
    def list_available_books(self):
        if self.book_list:
            print("all books that are currently available :")
            for book in self.book_list:
                print(f"{book.title} of all books that are currently available")
        else:
            print("book that are not available")


book1 = Book("The great gatsby ", "F. scott fitzgerald")
book2= Book("to kill a mockingbird","harper lee")
book3=Book("1994","george orwell")
#
library = Library()
library.add_book(book1)
library.add_book(book2)
library.add_book(book3)
# In[1]:
    
book1.borrow()
# In[1]:
book1.borrow()
# In[1]: 
book1.return_book()
library.list_available_books()  


















    
     