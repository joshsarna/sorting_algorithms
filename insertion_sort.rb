def insertion_sort(numbers)
  numbers.length.times do |i|
    displacement = 0
    while (i - displacement > 0 && numbers[i - displacement] < numbers[i - displacement - 1])
      numbers[i - displacement], numbers[i - displacement - 1] = numbers[i - displacement - 1], numbers[i - displacement]
      displacement += 1
    end
  end
  numbers
end