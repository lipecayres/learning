# System to calculate discounts on a employee salary.
# Input: Salary/hour  | WOrking hours (month)
# Return: Final Salary  after all discounts.
# Discounts: IR = 11% | INSS = 8% | syndicate: 5%

### CODE ###


#Variables
totalSalary = 0
ir = 0
inss = 0
syndicate = 0
finalSalary = 0


def start():
    intro()
    payment()
    summary()



def payment ():
    global totalSalary 
    global finalSalary 
    global ir 
    global inss 
    global syndicate
    
    print("Hou much money do you make per hour?")
    moneyHour = floatEntry()

    print()
    print("Hou many hours do you hork per month?")
    workTime = floatEntry()

    totalSalary = round(moneyHour * workTime, 2)
    ir = round(totalSalary * 0.11, 2)
    inss = round(totalSalary * 0.08, 2)
    syndicate = round(totalSalary *0.05, 2)
    finalSalary = round(totalSalary - ir - inss - syndicate, 2)


def summary ():
    print()
    print(f" + Total Salary: ${totalSalary}")
    print(f" - IR (11%): ${ir}")
    print(f" - INSS (8%): ${inss}")
    print(f" - Syndicate (5%): ${syndicate}")
    print(f" = Final Salary: ${round(finalSalary, 2)}")
    print()    


    # Introduction Layout
def intro():
    print()
    print("### Salary Calculator ###")
    print()


    # Function to validate number entry
def floatEntry():
    while True:
        n = input("Number: ")    
        try:
            n = float(n)
            break
        except ValueError:
            print("Invalid entry. Try again!")
    return n

start()