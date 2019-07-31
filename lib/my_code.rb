def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    yield new.push( source_array[i])
    i += 1
  end
  return new
end

map do |innards|
  * -1
end
