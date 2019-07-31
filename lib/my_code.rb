def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    yield
    i += 1
  end
  return new
end

map do
  * -1
end
