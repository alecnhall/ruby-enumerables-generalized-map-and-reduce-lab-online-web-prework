def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( source_array[i])
    i += 1
  end
  yield new
end

map{|b| * -1}
