# Your Code Here
def map(array)
  ary = []
  
  array.each do |elem|
  ary << yield(elem)
end
ary
end

def reduce(array, starting_point = nil)
  if starting_point
    sum = starting_point
    i = 0
  else
    sum = array[0]
    i = 1
  end
  while i < array.length
  
  sum = yield(sum, array[i])
  i +=1
  end
sum
end

it "returns true when all values are truthy" do
    source_array = [1, 2, true, "razmatazz"]
    expect(reduce(source_array){|memo, n| memo && n}).to be_truthy
  end