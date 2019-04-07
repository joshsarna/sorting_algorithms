def quick_sort(numbers)
  number_count = numbers.length
  arrays = [numbers]
  while arrays.length < numbers.length
    new_arrays = []
    arrays.each do |array|
      fulcrum_value = array[-1]
      fulcrum_index = array.length - 1
      smalls_checked = 0
      if fulcrum_value <= array[smalls_checked]
        array[smalls_checked], array[fulcrum_index - 1], array[fulcrum_index] = array[fulcrum_index - 1], array[fulcrum_index], array[smalls_checked]
        fulcrum_index -= 1
      else
        smalls_checked += 1
      end
      new_arrays << array[0..(fulcrum_index - 1)]
      new_arrays << [array[fulcrum_index]]
      new_arrays << array[(fulcrum_index + 1)..-1]
    end
    arrays = new_arrays
  end
  arrays.map{ | i | i[0] }
end