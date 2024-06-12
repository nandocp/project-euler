counter = 1
found = false

while !found
  break if (1..20).all? { |nr| counter % nr == 0 }
  
  counter += 1
end
