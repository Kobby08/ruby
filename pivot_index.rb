# A method to return the pivot index of an array of integers

def find_pivot(array_value)
  left_sum = -array_value[-1] #selecting the last index of the array and negating its value
  total_sum = array_value.inject(:+) #summing all the values in the array
  #iterating through the array

  array_value.each_index do |i|
    left_sum  += array_value[i-1]
    total_sum -= array_value[i] #subtrating the value of each index in the array from the total summation

    #condition to check that the value of sum_left is equal to the value of the total_sum after each iteration
    if left_sum == total_sum
      return i
    else
      return -1
    end
  end

end


find_pivot([1, 4,  6,  3,  2])

