# Do a system that change meters to centimeters

#####  CODE  #####

# Variables:
meters = 0

## MAIN

def main():

    print()

    inputMeters()
    metersCentimetersChange(meters)


def metersCentimetersChange (a):

        # Converting to centimeters

    centimeters = meters * 100

        #Printing on the screen

    print()
    print(f"Centimeters: {centimeters}")
    print()


def inputMeters ():
    global meters

    while True:
        try:

            # Asking a float number
            
            meters = float(input("Meters: "))
            return meters
        except ValueError:
            print()
            print("Please insert a number.")
            print()
    

   
main()