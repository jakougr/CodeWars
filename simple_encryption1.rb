#For building the encrypted string:
#Take every 2nd char from the string, then the other chars, that are not every 2nd char,
# and concat them as new String.
#Do this n times!

#Examples:
#"This is a test!", 1 -> "hsi  etTi sats!"
#"This is a test!", 2 -> "hsi  etTi sats!" -> "s eT ashi tist!"

#Write two methods:
=begin
              def encrypt(text, n)
                def decrypt(encrypted_text, n)

                  For both methods:
                               If the input-string is null or empty return exactly this value!
                  If n is <= 0 then return the input text.
=end

def encrypt(text, n)
  return text if n<=0
  array = text.split(//)
  default_size = array.size
  string=""
  i=0
  until i>=n
    y=2
    while string.length<default_size
      y=1 if y>default_size
      string.concat(array[y-1])
      y+=2
    end
    array = string.split(//)
    string = "" if i+1!=n
    i+=1
  end
  return string
end

def decrypt(text, n)
  return text if n<=0
  array = text.split(//)
  default_size = array.length
  i=2**n
  string = Array.new(default_size,"")
  counter=0
  while counter<default_size
    i=1 if i==default_size+2 and default_size.even?
    i=i-default_size if i>default_size
    string[i-1] = (array[counter])
    i = i + 2**n
    counter+=1
  end
  return string.join("").to_s
end

=begin
def encrypt(text, n)
  return text if n <= 0
  encrypt(text.scan(/(.)(.)?/).transpose.reverse.join, n-1)
end

def decrypt(text, n)
  return text if n <= 0
  c, s = text.chars, text.size/2
  decrypt(c.drop(s).zip(c.take s).join, n-1)
end
=end