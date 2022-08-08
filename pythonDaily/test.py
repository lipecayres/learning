def checkFloat ():
    while True:
        try:

            # Convert it into float
            
            x = float(input("Test: "))
            return x
        except ValueError:
            print("Please insert a number.")

checkFloat()