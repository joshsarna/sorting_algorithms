def structure_node(numbers, i)
  parent = numbers[i]
  left = numbers[2 * i + 1]
  right = numbers[2 * i + 2]
  if left && left > parent
    numbers[i], numbers[2 * i + 1] = left, parent
    parent = numbers[i]
    numbers = structure_node(numbers, 2 * i + 1)
  end
  if right && right > parent
    numbers[i], numbers[2 * i + 2] = right, parent
    numbers = structure_node(numbers, 2 * i + 2)
  end
  numbers
end

def build_tree(numbers)
  numbers.length.times do |i|
    numbers = structure_node(numbers, numbers.length - i - 1)
  end
  numbers
end

def heap_sort(numbers)
  sorted_numbers = []
  while numbers.length > 0
    numbers = build_tree(numbers)
    sorted_numbers << numbers[0]
    numbers = numbers[1..-1]
  end
  sorted_numbers.reverse
end