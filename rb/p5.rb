# 2520  is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

counter = 0
found = false

while !found
  counter += 1
  next unless counter.even?
  break if (3..20).all? { |nr| counter % nr == 0 }
  
  puts "#{counter}: false"
end
