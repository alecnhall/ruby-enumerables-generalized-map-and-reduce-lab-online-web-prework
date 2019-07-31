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

map(array){ |b| b * -1}

def reduce(source_array, starting_point = 0)
  i = 0
  sum = starting_point
  while i < source_array.length do
    sum += yield source_array[i]
    i += 1
  end
  return sum
end

def reduce_to_all_true(source_array)
  i = 0
  while i < source_array.length do
    if source_array[i] == false
      return yield false
    end
    i += 1
  end
  return yield true
end
