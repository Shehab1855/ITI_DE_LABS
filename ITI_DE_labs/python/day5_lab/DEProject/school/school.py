# In[]: Import Pacakges

from .student import Student
from .teacher import Teacher
from tabulate import tabulate



class School:
    """
    A class to represent a school.
    Attributes:
        name (str): The name of the school.
        people (list): A list of people (students and teachers) in the school.
    Methods:
        add_person(person): Adds a person to the school.
        show_all_people(): Prints introductions of all people in the school.
        mark_attendance(name): Marks attendance for a specific person by name.
        generate_report(): Generates a report of all people in the school, including their name, age, role, and attendance.
    """

    def __init__(self, name):
        self.name = name
        self.people = []

    def add_person(self, person):
        """Add a person to the school."""
        self.people.append(person)

    def show_all_people(self):
        """Print introductions of all people in the school."""
        for i in self.people:
            print(i.introduce())

    def mark_attendance(self, name):
        """Mark attendance for a specific person by name."""
        for i in self.people:
            if i.name == name:
                i.mark_attendance()

    def generate_report(self):
        """Generate a report of all people in the school."""
        table_data = []  # Initialize the table data outside the loop

        for i in self.people:
            if type(i) == Student:
                role = "Student"
            else:
                role = "Teacher"
            attendance = i.get_attendance()
            table_data.append([i.name, i.age, role, attendance])  

        headers = ["Name", "Age", "Role", "Attendance"]
        print(tabulate(table_data, headers=headers, tablefmt="simple"))
