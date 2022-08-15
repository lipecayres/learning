# Do a system that ask a number and print the message: 
# The number inserted was:

# CODE

    #Asking number:

number = input("Insert a number: ")
while True:
    if number.isdigit():
        break

    # Printing number
print("The informed number is: " + number)