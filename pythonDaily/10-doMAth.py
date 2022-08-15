# ASK 2 integer numbers ans print:
# - product of first ans second with half of third number 
# - sum of triple of first with third number 
# - third number raised to 3

### CODE - doMath ###

# Getting variables
numbers = []
for i in range (3):
    while True:
        n = input(f"Number {i +1}: ")
        try:
            n = int(n)
            numbers.append(n)
            break
        except ValueError:
            print("Invalid. Try again!")

# First math

n1 = round((numbers[0]*numbers[1]) * (numbers[2]/2))

# Second math

n2 = round((3*numbers[0]) + (numbers[2]))

# Third math

n3 = round((numbers[2] ** 3))

#Printing numbers

print()
print(f"First math: {n1}")
print(f"Second math: {n2}")
print(f"Third math: {n3}")
        