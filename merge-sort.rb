def merge_sort(array)
  def merge(left_sorted, right_sorted)
    result = []
    left = 0
    right = 0

    loop do
      break if right >= right_sorted.length and left >= left_sorted.length

      if right >= right_sorted.length or (left < left_sorted.length and left_sorted[left] < right_sorted[right])
        result << left_sorted[left]
        left += 1
      else
        result << right_sorted[right]
        right += 1
      end
    end

    return result
  end

  def merge_sort_iteration(array_sliced)
    return array_sliced if array_sliced.length <= 1

    midpoint = array_sliced.length/2 - 1
    left_sorted = merge_sort_iteration(array_sliced[0..midpoint])
    right_sorted = merge_sort_iteration(array_sliced[midpoint+1..-1])
    return merge(left_sorted, right_sorted)
  end

  merge_sort_iteration(array)
end
