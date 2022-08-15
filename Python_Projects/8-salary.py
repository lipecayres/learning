#System to show you week salary when asked salary per hour and the worked time.

#####  CODE  #####

# Variables

hourSalary = 0
workedTime = 0
monthlySalary = 0

def start():

        # Inputing salary per hour
    print()
    print("How much do you earn per hour?")

        # Validation - Entry number

    while True:
        hourSalary = input("Value: ")
        try:
            hourSalary = float(hourSalary)
            break
        except ValueError:
            print("Invalid entry. Enter a number.")

        # Inputing worked time

    print()
    print("How much time have you worked? (Weekly)")

        # Validation - Entry number
    while True:
        workedTime = input("Value: ")
        try:
            workedTime = float(workedTime)
            break
        except ValueError:
            print("Invalid entry. Enter a number.")

        # Getting monthly salary

    monthlySalary = hourSalary * workedTime * 4

        # Printing at the screen

    print()
    print("Summary")
    print(f"Salay per hour: {hourSalary}")
    print(f"Worked time: {workedTime}")
    print("--------------")
    print((f"Total Salary: {monthlySalary}"))    
    print()


def validEntry(a):
    while True:
        try:
            a = float(a)
            break
        except ValueError:
            print("Invalid entry. Enter a number.")


start()

