=begin
A palindromic number reads the same both ways. 
The largest palindrome made from the product of 
two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of 
two 3-digit numbers.
=end

def palindrome(a,b)
	palinds = []

	for a in 100..999
		for b in 100..999
			palind = (a*b).to_s
			if palind == palind.reverse && palind != "0"
				palinds << palind
			end
		end
	end
	return palinds.uniq.sort_by(&:to_i)
end

puts palindrome(999,999)