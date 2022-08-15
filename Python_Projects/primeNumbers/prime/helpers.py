# Function that are going to calculate prime numbers

def isPrime (num):
    if num > 1:
        for n in range (2, num):
            if num % n != 0:
                    # Keep checking
                continue
            else:
                #Get out and return False
                return False
    return True
