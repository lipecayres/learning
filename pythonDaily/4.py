# Do a system that asks 4 bimestral grades and show the average

# CODE

    # Total of bimestral numbers

totalGrades = 4

    # List of grades
grades = []

    # Getting total numbers

counter = 1
for grade in range(totalGrades):
    x = float(input("Grade " + str(counter) + ": "))
    grades.append(x)
    counter += 1

    # Getting list average:

average = sum(grades) / len (grades)

    #Printing results

print()
print("Grades average: " + str(average))
print()