def merge_sort(numbers)
  numbers_count = numbers.size

  if numbers_count > 1
    numbers_half = numbers_count / 2

    # sort left count if n > 1
    left_half = merge_sort(numbers[0..numbers_half - 1])

    # sort right count if n > 1
    right_half = merge_sort(numbers[numbers_half..-1])
  else
    return numbers
  end

  # merge arrays
  sorted_array = []
  original_left_size = left_half.size
  original_right_size = right_half.size

  while sorted_array.size <= original_left_size + original_right_size
    if left_half.empty? || right_half.empty?
      sorted_array += right_half if left_half.empty?
      sorted_array += left_half if right_half.empty?
      break
    end
    if left_half.first < right_half.first
      sorted_array << left_half.shift
    elsif right_half.first << left_half.first
      sorted_array << right_half.shift
    elsif left_half.first == right_half.first
      sorted_array << left_half.shift
      sorted_array << right_half.shift
    end
  end

  sorted_array
end
