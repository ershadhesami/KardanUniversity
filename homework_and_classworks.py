# 1- Find max of 2 numbers
def find_max(first, second):
    if first > second:
        return first
    else:
        return second

x = int(input("Enter first number: "))
y = int(input("Enter second number: "))

print("Max value is {} ".format(find_max(x,y)))

# 2- Multiply three numbers
def multiply_three_nums(num1, num2, num3):
    return num1 * num2 * num3

x = int(input("Enter number 1: "))
y = int(input("Enter number 2: "))
z = int(input("Enter number 3: "))

print("Result is {}".format(multiply_three_nums(x,y,z)))

# 3- Is in range or not - HomeWork
def in_range(the_number, the_range):
    if the_number in the_range:
        return True
    else:
        return False

my_range = range(10)
my_num = 10

if in_range(my_num, my_range):
    print("In range")
else:
    print("Not in range")

# 4- Mile to Kilo
def mile_to_kilo(the_mile):
    return the_mile * 1.609

print(mile_to_kilo(10))
