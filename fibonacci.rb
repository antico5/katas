def fibonacci n
  (1...n).each_with_object([0,1]) do |i,list|
    list << list.last(2).inject(:+)
  end
end

fibo = -> (n) {
  (1...n).each_with_object([0,1]) do |i,list|
    list << list.last(2).inject(:+)
  end
}
