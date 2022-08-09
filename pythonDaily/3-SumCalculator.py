# Do a system that shows two numbers and print the sum!

# CODE


def main():

 
        #Intro
    print()
    print(">> SUM Calculator <<")
    print("Developed by: Felipe Cayres")
    print()
    print("Enjoy!")
    print()
    

        # Prompting the first number 
    print()
    print(">> First number:")
    while True:
        x = input("Value: ")
        try:
            x = float(x)
            break
        except ValueError:
            print("Invalid entry. Please, insert a number.")
            print()


        # Prompting the second number 
    print()
    print(">> Second number:")
    while True:
        y = input("Value: ")
        try:
            y = float(y)
            break
        except ValueError:
            print("Invalid entry. Please, insert a number.")
            print()


        # Getting sum
    
    sum = x + y

    print()
    print(f"Sum between {x} and {y} is: {sum}")
    print()


main()
