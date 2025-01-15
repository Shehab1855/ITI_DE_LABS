# Project Structure
# =================
# my_school_project/
# ├── main.py
# ├── school/
# │   ├── __init__.py
# │   ├── person.py
# │   ├── student.py
# │   ├── teacher.py
# │   └── school.py

# Assignment Instructions: School Management Project

## Objective
In this assignment, you will create a school management system by implementing the logic for a provided project structure. The aim is to practice using Python classes, inheritance, and object-oriented programming principles to build a functional application.

---

## Overview
You are given a pre-defined project structure for a school management system. The system includes classes for representing people, such as `Person`, `Student`, and `Teacher`, and a `School` class for managing them. You need to implement the missing logic in the methods provided in the skeleton code.

---

## Project Structure
The project is organized into the following files:

### 1. `person.py`
Defines the `Person` class, which serves as the base class for other types of people.

**To Do:**
- Implement the `introduce()` method to return a string introducing the person.

### 2. `student.py`
Defines the `Student` class, which inherits from `Person`.

**To Do:**
- Implement the `introduce()` method to include the student's ID.

### 3. `teacher.py`
Defines the `Teacher` class, which also inherits from `Person`.

**To Do:**
- Implement the `introduce()` method to include the subject the teacher teaches.

### 4. `school.py`
Defines the `School` class for managing people in the school.

**To Do:**
- Implement the `add_person()` method to add a `Person` object (either a `Student` or `Teacher`) to the `people` list.
- Implement the `show_all_people()` method to display the introduction of every person in the school.

### 5. `main.py`
The main entry point of the application.

**To Do:**
- No modifications needed. This file is complete and serves as the driver code to test your implementation.

### 6. Track Attendance
**To Do:**
Extend the Student and Teacher classes to include an attendance attribute (default to 0). Implement the following methods:

- mark_attendance(): Increments the attendance by 1 for a Student or Teacher.
- get_attendance(): Returns the total attendance for a Student or Teacher.

- In the School class, add a method to mark attendance for a specific person by their name.

Example:
Attendance for Alice has been marked. Total: 1 day(s).

### 7. Generate Reports
**To Do:**
Add a method to the School class to generate a report of all people in the school, including their name, age, role (Teacher/Student), and attendance. The report should be displayed in a table-like format.

Example Output:

Name        Age    Role       Attendance
---------------------------------------
Ms. Ahmed   35     Teacher    10 days
Shehab      25     Student    1 days

---

## Instructions

1. **Download the Project Skeleton:**
   - Use the provided project structure as the starting point.

2. **Understand the Classes:**
   - Carefully read the class definitions and understand their attributes and relationships.

3. **Implement Methods:**
   - Add the required logic to each method described above.

4. **Test Your Code:**
   - Run `main.py` to test your implementation. Ensure all outputs match the expected behavior.

5. **Follow Best Practices:**
   - Use clear variable names and proper formatting.
   - Add comments if necessary to explain your code.

---

## Example Output
Once your implementation is complete, running `main.py` should produce output similar to the following:

```
Welcome to The British International School!
Hello, my name is Ms. Ahmed and I am 35 years old. I teach Mathematics.
Hello, my name is Mariam and I am 22 years old. I am a student, and my ID is S12345.
Hello, my name is Shehab and I am 25 years old. I am a student, and my ID is S12346.
```

---

## Submission
1. **Submit Your Code:**
   - Zip the entire project folder and submit it.

2. **Deadline:**
   - Ensure your submission is made before the deadline provided by your instructor.

---

## Grading Criteria
- **Completeness:** All methods are implemented correctly.
- **Functionality:** The program runs without errors and produces the expected output.
- **Code Quality:** Code is clean, well-structured, and adheres to best practices.
- **Understanding:** Demonstrates proper use of object-oriented programming principles.

---

## Help and Support
If you encounter any issues or have questions, feel free to reach out to me for guidance.

Good luck and happy coding!

