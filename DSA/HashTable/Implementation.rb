hash_table = {"alice" => 1, "bob" => 2, "charlie" => 3}
puts hash_table["alice"] 
puts hash_table["bob"]
puts hash_table["charlie"]

hash_table["aman"] = 4
hash_table["rajat"]= 5

hash_table.each {|key, value| puts "#{key} : #{value}"}