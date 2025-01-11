def unique(str)
  new_set = Set.new
  str.each_char do |ch|
    if new_set.include?(ch)
      return false
    else
      new_set.add(ch)
    end
  end
  return true
end

print "Enter string: "
str = gets.chomp
if unique(str)
  puts "String has unique characters"
else 
  puts "Doesn't have unique characters"
end