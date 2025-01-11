require 'set'  # For Set
require 'thread' # For Queue (Queue is part of the 'thread' library)


def word_ladder(start_word,target_word,word_list_array)

  queue = Queue.new
  queue.push([start_word,1])

  word_list_set = Set.new(word_list_array)

  word_list_set.delete(start_word)

  while !queue.empty?

    word , steps = queue.pop

    if word == target_word
      return steps
    end 

    (0...word.length).each do |i|
      original_char = word[i]
      ('a'..'z').each do |char|
        modified_word = word.dup
        modified_word[i] = char
        if word_list_set.include?(modified_word)
          word_list_set.delete(modified_word)
          queue.push([modified_word,steps+1])
        end
      end
    end

  end
  return 0

end

print "Enter the start word :- "
start_word = gets.chomp

print "Enter the target word :- "
target_word = gets.chomp

print "Enter the word list :- "
word_list_array = gets.chomp.split

result = word_ladder(start_word,target_word,word_list_array)

puts "The shortest transformation sequence from #{start_word} to #{target_word} is #{result} steps."