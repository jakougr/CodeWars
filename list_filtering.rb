#In this kata you will create a function that takes a list of non-negative
# integers and strings and returns a new list with the strings filtered out.

def filter_list(l)

  l.delete_if{|a| a.is_a?(String)}

end

=begin
def filter_list(l)
 l.grep(Numeric)
end
=end