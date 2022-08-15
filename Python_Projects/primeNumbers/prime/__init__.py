# Function that are going to calculate prime numbers
import prime.constants as c

def isPrime (num):
    if num > 1:
        for n in range (2, num):
            if num % n != 0:
                continue
            else:
                return False
    return True

def calculatePrimes (start, finish):
    primes = []
    for n in range (start, finish):
        if isPrime(n):
            primes.append(n)