#Given an array, find the int that appears an odd number of times.
#There will always be only one integer that appears an odd number of times.

def find_it(seq)
  seq.detect{|num| seq.count(num).odd?}
end
=begin
^ is the bitwise XOR operator. If you're not familiar with bitwise XOR, it means that you take the individual bits of the number and match them up. If a pair of bits is a 0 and 1, or a 1 and 0, that results in a 1. If the bits are the same, that results in a 0. The important thing here is the following properties:
X ^ X = 0, where X is any number.
0 ^ X = 0, where X is any nuber.
So you see, a pair of numbers is 0, so you can ignore any pair of numbers. If there are an even number of Xs, then you can cleanly split those Xs into pairs of Xs (this is what 'even' means). Because all of those are pairs, you can ignore all of them. But, if you have an odd number, you have a bunch of pairs left, plus one. Those pairs all become 0, so you have 0 ^ X = X.

I won't say this isn't VERY VERY hackish. But it works.
=end
=begin
def find_it(seq)
  seq.each do |item|
    temp = seq.count(item)
    return item if (temp%2!=0)
  end
end

def find_it(seq)
  seq.reduce(:^)
end
=end