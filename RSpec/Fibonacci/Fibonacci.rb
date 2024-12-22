def fibonacci(n)
  return [] if n == 0
  return [0] if n == 1

  sequence = [0, 1]
  (2...n).each do |i|
    sequence << (sequence[-1] + sequence[-2])
  end
  return sequence
end
