def points str
  digits = str.reverse.split ""
  minus_sign = digits.last == "-" ? digits.pop : ""
  triplets = digits.each_slice(3).map(&:join)
  minus_sign + triplets.join(".").reverse
end
