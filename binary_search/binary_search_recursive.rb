class BinarySearchRecursive
  def self.search number, array
    search_with_offset 0, number, array
  end

  def self.search_with_offset offset, number, array
    middle = array.size / 2
    if array.empty?
      return -1
    elsif array[middle] == number
      return offset + middle
    elsif array[middle] > number
      return search_with_offset(offset, number, array[0...middle])
    else
      return search_with_offset(offset + middle + 1, number, array[middle+1 .. -1])
    end
  end
end
