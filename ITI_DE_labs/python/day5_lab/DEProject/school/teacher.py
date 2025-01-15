# In[]: Import Pacakges

from .person import Person

# In[]:


class Teacher(Person):
    """
    A class to represent a teacher, derived from the Person class.
    Attributes:
        name (str): The name of the teacher.
        age (int): The age of the teacher.
        subject (str): The subject the teacher teaches.
        attendance (int): The number of days the teacher has attended.
    Methods:
        introduce(): Returns a string introducing the teacher.
        mark_attendance(): Increments the attendance count.
        get_attendance(): Returns the attendance count.
    """

    def __init__(self, name, age, subject):
        super().__init__(name, age)
        self.subject = subject
        self.attendance = 0

    def introduce(self):
        """Introduce the teacher."""
        return f"{super().introduce()} , my sybject is {self.subject}"

    def mark_attendance(self):
        """Increment the teacher's attendance count."""
        self.attendance +=1

    def get_attendance(self):
        """Return the teacher's attendance count."""
        return self.attendance
