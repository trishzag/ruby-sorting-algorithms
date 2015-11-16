def mark_sort(array)
  array_max = array.max
  array_min = array.min
  markings = [0] * (array_max - array_min + 1)
  array.each do |item|
    markings[item - array_min] += 1
  end

  result = []
  markings.length.times do |i|
    markings[i].times do
      result << i + array_min;
    end
  end

  result
end

print mark_sort([3,2,19,18,17])
