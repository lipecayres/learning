# System to get the area of a square and return double area

#####  CODE  #####

def start ():

    print()
    x = input("Side: ")
    while True:
        try:
            x = int(x)
            break
        except ValueError:
            print("Invalid entry! Insert a number.")

        # Get square area
    area = x**2

        # Get double area
    doubleArea = area*2

    print()
    print(f"Square Double Area: {doubleArea}")
    print()


start()