# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10001st prime number?

previous = []
primes = []
counter = 1

while primes.count != 10001
  counter += 1

  primes << counter if previous.none? { |nr| counter % nr == 0 }
  previous << counter
end

result = primes.last
