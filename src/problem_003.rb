def is_prime(n)
  return false if n <= 1
  2.upto(Math.sqrt(n).to_i) do |x|
    return false if n%x == 0
  end
  true
end

Math.sqrt(600851475143).to_i.downto(2) do |n|
  if is_prime(n) && 600851475143%n ==0
    puts "Maximum prime factor for this number is #{n}"
    break
  end
end

