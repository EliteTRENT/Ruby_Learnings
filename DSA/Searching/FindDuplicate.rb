def dupli(arr)
  slow = arr[0]
  fast = arr[0]
  while true
    slow = arr[slow]
    fast = arr[arr[fast]]
    break if slow == fast
  end
  slow = arr[0]
  while slow != fast
    slow = arr[slow]
    fast = arr[fast]
  end
  return "Duplicate Element: #{slow}"
end

arr = [2,1,4,3,4]
puts dupli(arr)