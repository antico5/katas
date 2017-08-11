require 'pry'

def benchmark &b
  start = Time.now
  yield
  elapsed = (Time.now - start).to_f
end

def random_list size
  size.times.map { rand(size * 10) }
end

def bubblesort input_array
  array = input_array.clone
  array.size.times do |i|
    (array.size - i - 1).times do |j|
      if array[j] > array[j+1]
        aux = array[j]
        array[j] = array[j+1]
        array[j+1] = aux
      end
    end
  end
  array
end

def merge left, right
  result = []
  while left.size > 0 and right.size > 0
    if left.first <= right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  result + left + right
end

def mergesort input
  return input if input.size <= 1

  mid = input.size / 2

  left = input[0...mid]
  right = input[mid...input.size]

  left = mergesort left
  right = mergesort right

  merge left, right
end

def swap array, first, second
  aux = array[first]
  array[first] = array[second]
  array[second] = aux
end

def quicksort input
  quicksort1 input, 0, (input.size - 1)
end

def quicksort1 a, lo, hi
  if lo < hi
    p = partition a, lo, hi
    quicksort1 a, lo, (p - 1)
    quicksort1 a, p + 1, hi
  end
  a
end

def partition a, lo, hi
  pivot = a[hi]
  i = lo
  (lo ... hi).each do |j|
    if a[j] <= pivot
      swap a, i, j
      i += 1
    end
  end
  swap a, i, hi
  i
end

tests = [10,100,1000,10000].map{ |size| random_list size }
tests.each do |test|
  time_bubble = benchmark { bubblesort(test) }
  time_merge = benchmark { mergesort(test) }
  time_quick = benchmark { quicksort(test) }
  time_ruby = benchmark { test.sort }
  puts "Size: #{ test.size } buble: #{ time_bubble } merge: #{ time_merge } quick: #{ time_quick } rubysort: #{ time_ruby }"
end

binding.pry
