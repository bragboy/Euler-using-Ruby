def divisors_sum(n)
  return 1 if n==1
  sum = 0
  1.upto(Math.sqrt(n)) {|x| sum+= (x + n/x) if n%x == 0}
  sum-=Math.sqrt(n).to_i if (Math.sqrt(n) - Math.sqrt(n).to_i) == 0
  return sum-=n
end
sum = 0
1.upto(9999) do |n|
  b = divisors_sum(n)
  a = divisors_sum(b)
  sum+=n if(a!=b && a==n)
end
puts "The sum of all amicable pairs under 10000 is #{sum}"

