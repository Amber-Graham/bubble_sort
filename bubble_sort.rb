#procedure bubble_sort(array of numbers or items)
#  n = length of the array
#  if array index -1 is greater than array index
#    swap them and remember it changed
#    swap(array index -1, array index)
#  end
#  check to see if everything is in the right order?
#  if it is, break and return array
#end


def bubble_sort(array)
  array_length = array.size
  return array if array_length <= 1
  loop do
    swapped = false
    (array_length - 1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i +1], array[i]
        swapped = true
      end
    end
    break if !swapped
  end
  array
end

bubble_sort([3,2,6,9,1,-1])
bubble_sort([99,5,-2,0,2,3])
bubble_sort([1])
bubble_sort([1,2,3,4])