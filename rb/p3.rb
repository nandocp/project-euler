=begin
ONE IS NOT A PRIME! IT IS UNIT.
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

A prime is:
						# greater or equal 2, and
						# all of {2,3,...,n-1} dividing n has remainder !=0

none of 2, 3, ..., n-1
divides n without remainder

All prime numbers larger than 5 end in 1, 3, 7, or 9.

A number n > 1 is prime if it cannot be written as product of two
integers a and b, both of which are larger than 1: n = a * b

If p is a prime number and p divides a product ab of integers, 
then p divides a or p divides b. This proposition is known as 
Euclid's lemma.[3] It is used in some proofs of the uniqueness 
of prime factorizations.

relationship of the number to its corresponding value of Euler's
totient function or the sum of divisors function.
=end

puts "digite um número"
number = gets.chomp.to_i

def primos(num)
	controle = 2
	primos = []
	while num > 1
		while num % controle == 0
			primos << controle
			num /= controle
		end
		controle += 1
	end
	return primos
end

puts primos(number)
# 1.	divide number by all numbers up to (but not) number.
# 		it will return all numbers, including not prime.
# 		1.1.	put them in a hash
# 2.	iterate over the hash to search for prime numbers
# 		begin from the end, dividing the biggest one by all of
# 		its ancestors.
# 		2.1.	IF control_number, divided by one of its predecessors
# 					has remainder == 0
# 					2.1.1.	discard it
# 		3.1.	IF control_number, divided by all of its predecessors
# 					has remainder != 0
# 					3.1.1.	put in the final hash