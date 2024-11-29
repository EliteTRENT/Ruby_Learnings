str = "abc123 24defg pqr12nk"
sum = 0
for i in 0..(str.length-1)
  if str[i].match?(/\d/)
    sum += str[i].to_i
  end
end
puts "Sum: #{sum}"