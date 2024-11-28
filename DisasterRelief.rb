# Problem: Disaster Relief Distribution
# Scenario
# Imagine you are part of a disaster relief team. After a natural disaster, several shelters have been set up to house displaced people. 
# Each shelter has a different capacity, and you have a list of relief items to distribute equally among them.
# Your task is to determine how the relief items can be distributed evenly across the shelters, ensuring that no shelter receives more than its capacity. 
# If there are leftover items that can't be distributed evenly, those should be returned to the main storage.

# Input
# capacities = [5, 10, 8, 4] (shelters with capacities of 5, 10, 8, and 4 respectively)
# relief_items = 30 (total items to distribute)
# Output
# [5, 10, 8, 4] (items distributed to shelters)
# 3 (items remaining in storage)

capacities = gets.chomp.split.map{|x| x.to_i}
relief_items = gets.chomp.to_i
distributed = []
if relief_items == 0
  (capacities.length).times do
    distributed.push(0)
  end
  puts "Items Distributed: #{distributed}"
  puts "Leftovers: 0"
  exit
end

for i in 0..(capacities.length-1)
  if relief_items >= capacities[i]
    relief_items -= capacities[i]
    distributed.push(capacities[i])
  elsif relief_items == 0
    (capacities.length-distributed.length).times do
      distributed.push(0)
    end
    break
  else 
    distributed.push(relief_items)
    relief_items = 0
    (capacities.length-distributed.length).times do
        distributed.push(0)
    end
    break
  end
end

puts "Items Distributed: #{distributed}"
puts "Leftovers: #{relief_items}"

    