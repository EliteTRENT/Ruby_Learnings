def group_anagrams(strs)
  hash_map = {}

  strs.each do |word|
    sorted_word = word.chars.sort.join
    if hash_map.key?(sorted_word)
      hash_map[sorted_word] << word
    else
      hash_map[sorted_word] = [word]
    end
  end

   hash_map.values
end
input = ["eat", "tea", "tan", "ate", "nat", "bat"]
output = group_anagrams(input)
puts "Grouped Anagrams: #{output.inspect}"