# In[]: Import Pacakges

from school.school import School
from school.student import Student
from school.teacher import Teacher



def main():
    """The main function to run the project."""
    # Create a school
    my_school = School("The British International School")

    # Add a teacher and some students
    teacher = Teacher("Ms. Ahmed", 35, "Mathematics")
    student1 = Student("Mariam", 22, "S12345")
    student2 = Student("Shehab", 25, "S12346")

    my_school.add_person(teacher)
    my_school.add_person(student1)
    my_school.add_person(student2)

    # Mark attendance
    my_school.mark_attendance("Alice")
    my_school.mark_attendance("Shehab")

    # Show all people in the school
    print(f"Welcome to {my_school.name}!")
    my_school.show_all_people()

    # Generate a report
    my_school.generate_report()


if __name__ == "__main__":
    main()
