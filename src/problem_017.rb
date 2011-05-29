
ONES = ["zero","one","two","three","four","five","six","seven","eight","nine"]
ELEVENS = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
TEN,AND = ["ten","and"]
TENS = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
HUNDRED, THOUSAND = ["hundred","thousand"]

def nums_upto_99(n)
  return ONES[n] if n < 10
  return TEN if n==10
  return "#{ELEVENS[n-11]}" if n < 20
  return TENS[n/10-2] if n%10==0 && n< 100
  "#{TENS[n/10-2]} #{ONES[n%10]}"
end

def nums_upto_1000(n)
  return nums_upto_99(n) if n<100
  return "#{ONES[1]} #{THOUSAND}" if n==1000
  return "#{ONES[n/100]} #{HUNDRED}" if n%100 == 0
  "#{ONES[n/100]} #{HUNDRED} #{AND} #{nums_upto_99(n%100)}"
end
count = 0
1.upto(1000){|n| count+=nums_upto_1000(n).gsub(/ /,'').size}
puts "The total characters are #{count}"

