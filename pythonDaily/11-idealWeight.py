## System to calculate the ideal weight of a person using the person's height

### CODE ###

print()
print(">>> Ideal weight calculator <<<")
print()

while True:
    height = input("Insert your height (cm): ")    
    try:
        height = float(height)
        break
    except ValueError:
        print("Error. Insert a number!")

height = height/100

idealWeight = (72.7 * height) - 58

print()
print("This is your ideal weight:")
print(f"Ideal Weight: {round(idealWeight, 2)} kg")
print()