# System to calculate discounts on a employee salary.
# Input: Salary/hour  | WOrking hours (month)
# Return: Final Salary  after all discounts.
# Discounts: IR = 11% | INSS = 8% | syndicate: 5%

### CODE ###

def start():
    intro()


    # Introduction Layout
def intro():
    print()
    print("### Salary Calculator ###")
    print()


    # function to validate number entry
def numberEntry():
    while True:
        n = input("Value: ")    
        try:
            n = float(n)
            break
        except ValueError:
            print("Invalid entry. Try again!")
    return n




start()