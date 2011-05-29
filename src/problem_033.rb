
n_s, d_s = [1,1]
12.upto(97) do |n|
  13.upto(98) do |d|
    next if n/10 == n%10 || d/10 == d%10 || n%10 ==0 || d%10 ==0 || n>=d
    a,b = [n.to_s.split(//), d.to_s.split(//)]
    if (a&b).size == 1 && (a-(a&b))[0].to_f / (b-(a&b))[0].to_f == n.to_f/d.to_f
      n_s*=(a-(a&b))[0].to_i
      d_s*=(b-(a&b))[0].to_i
    end
  end
end
puts "The product in its lowest common terms is #{d_s/n_s}"

