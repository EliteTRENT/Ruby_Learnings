def palindrome(str)
  left,right = 0,str.length-1
  while left < right
    if str[left] != str[right]
      return false
    end
    left += 1
    right -= 1
  end
  return true
end

puts palindrome("racecar")
puts palindrome("Aryan")
puts palindrome("1221")
