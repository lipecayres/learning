#System to show you week salary when asked salary per hour and the worked time.

#####  CODE  #####

# Variables

hourSalary = 0
workedTime = 0
weekSalary = 0

def start():

    print()
    print("How much do you earn per hour?")
    hourSalary = input("Value:")
    validEntry(hourSalary)
    
    print()
    print("How much time have you worked?")
    workedTime = input("Value")
    validEntry(workedTime)


def validEntry(a):
    while True:
        try:
            a = float(a)
            break
        except ValueError:
            print("Invalid entry. Enter a number.")

