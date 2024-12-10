print "Not Multiple of 3: "
for i in 1..20
  if i % 3 == 0
    next
  end
  print "#{i} "
end