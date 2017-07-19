class PrimeNumbers
  def self.factors number
    divisor = 2
    [].tap do |factors|
      while number > 1
        if number % divisor == 0
          factors << divisor
          number = number / divisor
          divisor = 2
        else
          divisor += 1
        end
      end
    end
  end
end
