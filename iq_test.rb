#Bob is preparing to pass IQ test. The most frequent task in this test is
# to find out which one of the given numbers differs from the others. Bob observed
# that one number usually differs from the others in evenness. Help Bob — to check his
# answers, he needs a program that among the given numbers finds one that is different
# in evenness, and return a position of this number.
#! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)

##Examples :
#iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even
#iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd

def iq_test(array) #Will mod 2 the array (even-odd) and if the the sum==1 then return the only 1, else return the 0
  array = array.split(" ").map(&:to_i) #create an array from string
  array.map! {|a| a=a%2}
  sum = array.inject(:+)
  case sum
    when 1
      return ((array.each_index.select {|a| array[a]==1}).join("").to_i) + 1 #the index of the unique 1
      exit
    else
      return ((array.each_index.select {|a| array[a]==0}).join("").to_i) + 1 #the index of the unique 0
  end
end

=begin
def iq_test(numbers)
  nums = numbers.split.map(&:to_i).map(&:even?)
  nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
end
=end