def quick_sort(numbers)
  number_count = numbers.length
  arrays = [numbers]
  while arrays.length < numbers.length
    new_arrays = []
    arrays.each do |array|
      if array.length > 1
        fulcrum_value = array[-1]
        fulcrum_index = array.length - 1
        smalls_checked = 0
        timer = fulcrum_index
        timer.times do
          if fulcrum_value <= array[smalls_checked]
            array[smalls_checked], array[fulcrum_index - 1], array[fulcrum_index] = array[fulcrum_index - 1], array[fulcrum_index], array[smalls_checked]
            fulcrum_index -= 1
          else
            smalls_checked += 1
          end
        end
        new_arrays << array[0..(fulcrum_index - 1)] if array[0..(fulcrum_index - 1)].length > 0
        new_arrays << [array[fulcrum_index]]
        new_arrays << array[(fulcrum_index + 1)..-1] if array[(fulcrum_index + 1)..-1].length > 0
      else
        new_arrays << array
      end
    end
    arrays = new_arrays
  end
  arrays.map{ | i | i[0] }
end