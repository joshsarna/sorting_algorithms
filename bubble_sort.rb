def bubble_sort(numbers)
  while !@sorted
    @sorted = true
    (0..(numbers.length - 2)).each do |i|
      if numbers[i] > numbers[i + 1]
        numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
        @sorted = false
      end
    end
  end
  numbers
end