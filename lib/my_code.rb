source_array = [1, 2, 3, -9]
def map(source_array)
  source_array.map {|n| n * -1}
end
def map_double(source_array)
  source_array.map {|n| n * 2}
end
def map_to_square(source_array)
  source_array.map (|n| n ** 2)
end
