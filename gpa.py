print("""
Hi!
This software helps you know your GPA and grade
""")

no_of_subjects = int(input("How many subjects do you have in this semester?: "));
subjects_details = []
qp = 0
gpa = 0
cgpa = 0.0
i = 1
while i <= no_of_subjects:
    sub_name = input("Enter subject no {sub_no}: ".format(sub_no = i))
    i = i + 1
    sub_credit = int(input("Enter its credit: "))
    sub_marks = int(input("Enter your marks: "))
    sub_grade = ''
    sub_gpa = 0
    # Calculating grade and gpa
    if sub_marks >= 90:
        sub_grade = 'A'
        sub_gpa = 4
    elif sub_marks >= 80:
        sub_grade = 'B'
        sub_gpa = 3
    elif sub_marks >= 70:
        sub_grade = 'C'
        sub_gpa = 2
    elif sub_marks >= 60:
        sub_grade = 'D'
        sub_gpa = 1
    else:
        sub_grade = 'F'
        sub_gpa = 0
    # Assign values to a new array and append it to prev array
    temp = [sub_name, sub_credit, sub_marks, sub_grade, sub_gpa]
    subjects_details.append(temp)
    qp = qp + (sub_credit * sub_gpa)
    gpa = gpa + sub_gpa

cgpa = qp / gpa

print(subjects_details)
print("Your CGPA is {cgpa}".format(cgpa = cgpa))
