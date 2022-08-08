# Do a system that asks school gradesList and return the average

# CODE

# Variables

    # Grades Quantity
gradesQuantity = 0

    # List of gradesList
gradesList = []


def main():

    print()

    gradesQuant()
    inputGrades	()
    average()


def gradesQuant ():
    global gradesQuantity

    while True:
        try:

            # Asking a int number
            
            gradesQuantity = int(input("Quantity of grades: "))
            return gradesQuantity
        except ValueError:
            print()
            print("Please insert a number.")
            print()

    
def inputGrades ():

    global gradesQuantity
    global gradesList
    counter = 1

    for grade in range(gradesQuantity):
        while True:
            try:

                # Asking a int number
                
                x = float(input(f"Grade {counter}: "))
                gradesList.append(x)
                counter += 1
                break

            except ValueError:
                print()
                print("Please insert a number.")
                print()


def average():

        # Getting list average:

    average = sum(gradesList) / len (gradesList)

        #Printing results

    print()
    print(f"Grades average: {average}")
    print()


main()