def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    yield # <== Unique work
    i += 1
  end
  return new
end
