# Your Code Here
def map(array)
  ary = []
  
  array.each do |elem|
  ary << yield(elem)
end
ary
end

def reduce(array, starting_point = 0)
total = array.reduce
yield(total)
total
end