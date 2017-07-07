=begin
If we list all the natural numbers below 10 that are multiples of 3 
or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
=end

number = 1000

def multiples(num)
	count = 1
	soma= 0
	while count <= num do
		if count % 3 == 0 || count % 5 == 0
			soma += count
		end
		count += 1 
	end
	return soma
end

puts multiples(number)