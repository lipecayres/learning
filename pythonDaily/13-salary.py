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

    totalSalary = moneyHour * workTime
    ir = totalSalary * 0.11
    inss = totalSalary * 0.08
    syndicate = totalSalary *0.05
    finalSalary = totalSalary - ir - inss - syndicate


def summary ():
    print()
    print(f" + Total Salary: ${totalSalary}")
    print(f" - IR (11%): ${ir}")
    print(f" - INSS (8%): ${inss}")
    print(f" - Syndicate (5%): ${syndicate}")
    print(f" = Final Salary: ${totalSalary}")
    print()    


    # Introduction Layout
def intro():
    print()
    print("### Salary Calculator ###")
    print()


    # Function to validate number entry
def floatEntry():
    while True:
        n = input("Number:")    
        try:
            n = float(n)
            break
        except ValueError:
            print("Invalid entry. Try again!")
    return n


start()