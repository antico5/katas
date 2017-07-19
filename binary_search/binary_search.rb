class BinarySearch
  def self.search number, array
    offset = 0
    while !array.empty? do
      middle = array.size / 2
      pivot = array[middle]
      if pivot == number
        return middle + offset
      elsif pivot > number
        array = array[0...middle]
      else
        array = array[middle + 1 .. -1]
        offset += middle + 1
      end
    end
    return -1
  end
end
