class PrimeNumbers
  def self.factors number
    factors = []
    divisor = 2
    while number > 1
      if number % divisor == 0
        factors << divisor
        number = number / divisor
        divisor = 2
      else
        divisor += 1
      end
    end
    factors
  end
end
