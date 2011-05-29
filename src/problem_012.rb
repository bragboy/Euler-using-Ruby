def divisors_count(n)
  return 1 if n==1
  count = 0
  1.upto(Math.sqrt(n)) do |x|
    if n%x == 0
      count+=1 unless n.to_f/x == x
      count+=1
    end
  end
  count
end

INFINITY = 1.0/0.0
1.upto(INFINITY) do |n|
  if divisors_count(n*(n+1)/2) > 500
    puts "The first triangle number to have over 500 divisors is #{n*(n+1)/2}"
    break
  end
end

