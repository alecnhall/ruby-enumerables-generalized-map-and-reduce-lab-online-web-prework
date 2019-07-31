array = [1, 2, 4, -9]
def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield source_array[i])
    i += 1
  end
  return new
end

def reduce(source_array, starting_point = 0)
  i = 0
  sum = starting_point
  while i < source_array.length do
    sum += yield source_array[i]
    i += 1
  end
  return sum
end

def reduce(source_array)
  i = 0
  while i < source_array.length do
    if yield source_array[i] == false
      return false
    end
    i += 1
  end
  return true
end
