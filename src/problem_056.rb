
max = []
1.upto(99) { |x| 1.upto(99){|y| max << (x**y).to_s.split(//).inject(0){|b,i| b+=i.to_i}} }
puts "The maximum sum is #{max.max}"

