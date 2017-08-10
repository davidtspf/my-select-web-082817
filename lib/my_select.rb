def my_select(collection)
  i = 0

  new_array = []

  while i < collection.length
    if yield(collection[i]) == true
      new_array.push(collection[i])
    end
    i += 1
  end

  return new_array

end

cool_nums = [1, 2, 3, 4]
my_select(cool_nums) do |nums|
  nums.even?
end
