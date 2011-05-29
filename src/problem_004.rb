arr = []
101.upto(999) do |i|
  101.upto(999) do |j|
    prod = i*j
    arr << prod if prod.to_s == prod.to_s.reverse
  end
end
puts "The largest palindromic number is #{arr.max}"

