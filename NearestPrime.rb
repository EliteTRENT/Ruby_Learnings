def prime(n)
  if n == 0 || n == 1
    return false
  end
  for i in 2...n
    if n % i == 0
      return false
    end
  end
  return true
end


print "Enter number: "
num = gets.chomp.to_i
res1,res2 = 0,0
# Checking left side
for i in (num-1).downto(2)
  flag = prime(i)
  if flag == true
    res1 = i
    break
  end
end
# Checking right side
for i in (num+1)..(num+30)
  flag = prime(i)
  if flag == true
    res2 = i
    break
  end
end

print "Nearest Prime: "
if (res1 - num).abs > (res2 - num).abs
  puts res2
else
  puts res1
end