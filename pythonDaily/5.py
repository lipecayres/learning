# Do a system that change meters to centimeters

# CODE

    # Getting meters from the user
while True:
    meters = input("Meters: ")
    if meters.isdigit():
        meters = float(meters)
        break

    # Converting to centimeters

centimeters = meters * 100

    #Printing on the screen

print()
print("Centimeters: " + str(centimeters))
print()
