def selection_sort(array)
  length = array.size
  sorted = array

  for i in 0..length-1 do
    search_array = sorted[i..-1]
    current_number = sorted[i]
    min_number = search_array.min
    switch_index = i + search_array.index(min_number)
    sorted[i] = min_number
    sorted[switch_index] = current_number
  end

  print sorted.to_a
end

array_me = [1, 9, 12, 17, 2, 5, 7]
puts selection_sort(array_me)
