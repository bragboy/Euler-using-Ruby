def is_prime(n)
  return false if n <= 1
  2.upto(Math.sqrt(n).to_i) do |x|
    return false if n%x == 0
  end
  true
end
sum = 0
2.upto(2000000) do |num|
  sum+=num if is_prime(num)
end
puts "Sum is #{sum}"

