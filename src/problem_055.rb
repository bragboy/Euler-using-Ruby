def is_lynchrel(n)
  50.times do
    n += n.to_s.reverse.to_i
    return false if n.to_s == n.to_s.reverse
  end
  true
end
count = 0
1.upto(9999) do |n|
  count +=1 if is_lynchrel(n)
end
puts "Lynchrel numbers below 10000 is #{count}"

