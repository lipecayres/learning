from prime.helpers import *
import prime.constants as c


class Prime:
    def __init__(self, start, finish):
        self.start = start
        self.finish = finish

    def calculatePrimes (self):
        primes = []
        for n in range (self.start, self.finish):
            if isPrime(n) and n not in c.SKIP_RANGE:
                primes.append(n) 
        return primes

    def prettify(self):
        body = ''
        for result in self.calculatePrimes():
            body += f"This is a prime number: {result} \n"
        return body
