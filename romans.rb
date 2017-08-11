SYM = {'M' => 1000,
       'CM' => 900,
       'D' => 500,
       'CD' => 400,
       'C' => 100,
       'XC' => 90,
       'L' => 50,
       'X' => 10,
       'IX' => 9,
       'V' => 5,
       'IV' => 4,
       'I' => 1 }
def to_roman number
  roman = ""
  SYM.each do |sym, value|
    while number >= value
      roman << sym
      number -= value
    end
  end
  roman
end

