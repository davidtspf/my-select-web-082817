def my_select(array)
  fixed = []

  i = 0

  while i < array.length
    if yield(array[i])
      fixed << array[i]
    end
    i += 1
  end
  puts fixed
  return fixed

end

cool_nums = [1, 2, 3, 4]
my_select(cool_nums) do |nums|
  nums.even?
end
