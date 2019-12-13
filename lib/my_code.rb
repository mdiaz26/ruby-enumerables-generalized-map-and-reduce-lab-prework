# Your Code Here
def map(array)
  ary = []
  
  array.each do |elem|
  ary << yield(elem)
end
ary
end

def reduce(array, starting_point = 0)
ary = []

total = array.reduce
ary << total
yield(total)
ary
end