class StringManipulator
  def reverse_words(str)
    arr = str.split
    left,right = 0,arr.length-1
    while left < right
      arr[left],arr[right] = arr[right],arr[left]
      left += 1
      right -= 1
    end
    str = arr.join(" ")
    return str
  end

  def capitalize_words(str)
    arr = str.split
    for i in 0...arr.length
      arr[i] = arr[i].capitalize
    end
    str = arr.join(" ")
    return str
  end
end

string_mani = StringManipulator.new
reversed_str = string_mani.reverse_words("Hello, I'm Aryan Negi.")
capitalized_str = string_mani.capitalize_words("hello, i'm aryan negi")
puts "Reversed String: #{reversed_str}"
puts "Capitalized String: #{capitalized_str}"