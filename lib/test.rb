# method_using_block {puts "Hi"}

# The above is the same as doing...
# method_using_block do
  # puts "Hi"
# end

def make_sandwich(element1, element2)
  base = "A #{element1} and #{element2}"
  yield (base)
end

make_sandwich("gator", "gumbo") do |innards|
  "#{innards} on rye"
end
