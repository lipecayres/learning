## System to calculate the ideal weight of a person using the person's height

### CODE ###

print()
print(">>> Ideal weight calculator <<<")
print()


# Asking gender

gender = ""

while True:
        
        # Gender normalization
    gender = input("Are you a Man or a Woman? (M / W): ")
    gender = gender[0].rstrip().lower()

    if gender == "m" or gender == "w":
        break
    else:
        print("Invalid entry. Try again!")

while True:
    height = input("Insert your height (cm): ")    
    try:
        height = float(height)
        break
    except ValueError:
        print("Error. Insert a number!")

    # height normalization
height = height/100

    # Ideal weight math

idealWeight = 0

        # Man math
if gender == "m":
    idealWeight = (72.7 * height) - 58

        # Woman math
elif gender == "w":
    idealWeight = (62.1 * height) - 44.7


print()
print("This is your ideal weight:")
print(f"Ideal Weight: {round(idealWeight, 2)} kg")
print()