def merge_sort(numbers)
  number_arrays = numbers.map{ | i | [i] }
  while number_arrays.length > 1
    merged_arrays = []
    i = 0
    while i + 1 < number_arrays.length
      array1 = number_arrays[i]
      array2 = number_arrays[i + 1]
      merged_array = []
      while array1[0] && array2[0]
        if array1[0] > array2[0]
          merged_array << array2[0]
          array2 = array2[1..-1]
        else
          merged_array << array1[0]
          array1 = array1[1..-1]
        end
      end
      merged_array += (array1 + array2)
      merged_arrays << merged_array
      i += 2
    end
    number_arrays = merged_arrays
  end
  number_arrays[0]
end

p merge_sort([2,6,2,7,8,23,64,3])