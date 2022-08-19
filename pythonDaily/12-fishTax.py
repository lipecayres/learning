## System to calculate fish overweighting and print the associated tax.
## Weight limit = 50kg | Tax = $4/kg


### CODE ###

#Variables:

weightLimit = 50
tax = 4
weight = 0

print()
print(">>> Fish Overveight Calculator <<<")
print()

# Getting fish weight
while True:
    weight = input("Insert fish weight (kg): ")    
    try:
        weight = float(weight)
        break
    except ValueError:
        print("Error. Insert a number!")

# Overweight and tax math

if weight >= weightLimit :
    overweight = weight - weightLimit

else:
    overweight = 0

#Tax Math
taxValue = tax * overweight


# Printing at screen
print()
print(" >>> Summary <<< ")
print(f"Overweight: {round(overweight, 2)} kg")
print(f"Tax: ${round(taxValue, 2)}")
