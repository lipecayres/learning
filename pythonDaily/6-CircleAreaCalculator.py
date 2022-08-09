# System o calculare the Circle Area when prompted the radius

##### CODE #####


def main():

        #Variables
    radius = ""
    area = 0
    PI = 3.1416

        #Intro
    print()
    print(">> Welcome to the Circle Area Calculator <<")
    print("Developed by: Felipe Cayres")
    print()
    print("Enjoy!")
    print()
    

        # Prompting the radius of the circle 
    print()
    print(">> Insert the circle radius:")
    while True:
        radius = input("Value: ")
        try:
            radius = float(radius)
            break
        except ValueError:
            print("Invalid entry. Please, insert a number.")
            print()
    radius = float(radius)   
   
        # Getting Circle Area
    
    area = PI * (radius**2)

    print()
    print(f"The Circle area is about: {round(area, 2)}")
    print()


main()