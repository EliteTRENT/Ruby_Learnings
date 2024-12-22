def longest_common_prefix(strs)
  return "" if strs.empty?
  
  prefix = ""
  
  strs[0].length.times do |i|
    current_char = strs[0][i]
    
    strs.each do |str|
      return prefix if i >= str.length || str[i] != current_char
    end
    
    prefix += current_char
  end
  
  prefix
end

puts longest_common_prefix(["flower", "flow", "flight"])  
puts longest_common_prefix(["dog", "racecar", "car"])   
puts longest_common_prefix(["intermediate", "internet", "internet"])  
