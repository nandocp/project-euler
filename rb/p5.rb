# 2520  is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

counter = 1
found = false

while !found
  break if (1..20).all? { |nr| counter % nr == 0 }
  
  counter += 1
end
