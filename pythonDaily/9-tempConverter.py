## TEMPERATURE CONVERTER

## System to convert temperatures // Celcius - Fahrenheit - Kelvin  


def main ():
    
    intro()
    menu()
    

def intro():
    print()
    print("##########################")
    print(">>>> Temperature Converter <<<<<")
    print("Celcius - Fahrenheit - Kelvin")
    print()
    print("Developed by: Felipe Cayres")
    print("##########################")


def menu():
    print()
    print("Choose a temperature to converter:")
    print()
    print("1. Celcius -> Fahrenheit")
    print("2. Celcius -> Kelvin")
    print("3. Fahrenheit -> Celcius")
    print("4. Fahrenheit -> Kelvin")
    print("5. Kelvin -> Celcius")
    print("6. Kelvin -> Fahrenheit")
    print()

    cursor = 0
    while True:
        cursor = input("Choose a number: ")
        try:
            cursor = int(cursor)
            break
        except ValueError:
            print("Invalid entry. Try again!")

    if cursor == 1:
        celToFar()
        menu()

    elif cursor == 2:
        celToKel()
        menu()

    elif cursor == 3:
        farToCel()
        menu()
        
    elif cursor == 4:
        farToKel()
        menu()

    elif cursor == 5:
        kelToCel()
        menu()

    elif cursor == 6:
        kelToFar()
        menu()

    else:
        print("Choose a valid entry on menu.")
        menu()

#
### Convertions
#

def celToFar ():
    print()
    print("Celcius to Fahrenheit")
    print()
    print("What's the temperature in ºCelcius?")
    print()

    while True:
        temp1 = input("Temperature:")
        try:
            temp1 = float(temp1)
            break
        except ValueError:
            print("Invalid entry. Try again!")

        # convertion
    temp2 = 1.8*temp1 + 32

        # printing results
    print()
    print(f"Celcius (ºC): {temp1}")
    print(f"Fahrenheit (ºF): {round(temp2 , 2)}")


def celToKel ():
    print()
    print("Celcius to Kelvin")
    print()
    print("What's the temperature in ºCelcius?")
    print()

    while True:
        temp1 = input("Temperature (ºC):")
        try:
            temp1 = float(temp1)
            break
        except ValueError:
            print("Invalid entry. Try again!")

        # convertion
    temp2 = temp1 + 273

        # printing results
    print()
    print(f"Celcius (ºC): {temp1}")
    print(f"Kelvin (K): {round(temp2 , 2)}")


def farToCel ():
    print()
    print("Fahrenheit to Celcius")
    print()
    print("What's the temperature in ºFahrenheit?")
    print()

    while True:
        temp1 = input("Temperature (ºF):")
        try:
            temp1 = float(temp1)
            break
        except ValueError:
            print("Invalid entry. Try again!")

        # convertion
    temp2 = (temp1 - 32)/1.8
    
        # printing results
    print()
    print(f"Fahrenheit (ºF): {temp1}")
    print(f"Celcius (ºC): {round(temp2 , 2)}")


def farToKel ():
    print()
    print("Fahrenheit to Kelvin")
    print()
    print("What's the temperature in ºFahrenheit?")
    print()

    while True:
        temp1 = input("Temperature (ºF):")
        try:
            temp1 = float(temp1)
            break
        except ValueError:
            print("Invalid entry. Try again!")

        # convertion
    temp2 = ((temp1 - 32) *(5/9)) + 273.15

        # printing results
    print()
    print(f"Fahrenheit (ºF): {temp1}")
    print(f"kelvin (K): {round(temp2 , 2)}")


def kelToCel ():
    print()
    print("Kelvin to Celcius")
    print()
    print("What's the temperature in Kelvin?")
    print()

    while True:
        temp1 = input("Temperature (K):")
        try:
            temp1 = float(temp1)
            break
        except ValueError:
            print("Invalid entry. Try again!")

        # convertion
    temp2 = temp1 - 273.15

        # printing results
    print()
    print(f"Kelvin (K): {temp1}")
    print(f"Celcius (ºC): {round(temp2 , 2)}")


def kelToFar ():
    print()
    print("Kelvin to Fahrenheit")
    print()
    print("What's the temperature in Kelvin?")
    print()

    while True:
        temp1 = input("Temperature (K):")
        try:
            temp1 = float(temp1)
            break
        except ValueError:
            print("Invalid entry. Try again!")

        # convertion
    temp2 = ((temp1 - 273.15) * (9/5)) + 32

        # printing results
    print()
    print(f"Kelvin (K): {temp1}")
    print(f"Fahrenheit (ºF): {round(temp2 , 2)}")





main()