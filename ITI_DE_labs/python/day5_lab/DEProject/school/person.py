# In[]: Import Pacakges


# In[]:


class Person:
    """
    A base class to represent a person.
    Attributes:
        name (str): The name of the person.
        age (int): The age of the person.
    Methods:
        introduce(): Returns a string introducing the person.
    """

    def __init__(self, name, age):
        self.name = name
        self.age = age

    def introduce(self):
        """Introduce the person."""
        return f"my name is {self.name} and my age is {self.age}"
