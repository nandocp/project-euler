/* The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143? */

function prime () {
	var primes = [];
	var d = 2;
	var number = 600851475143;
	while (number > 1) {
		while (number % d === 0) {
			primes.push(d);
			number /= d;
		}
	d += 1;
	}
	return primes;
}

console.log(prime());