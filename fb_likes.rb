#People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.
#Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:
#likes [] // must be "no one likes this"
#likes ["Peter"] // must be "Peter likes this"
#likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
#likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
#likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"
#For more than 4 names, the number in and 2 others simply increases.

def likes(names)
  case names.size
    when 0
      return "no one likes this"
      exit
    when 1
      return "#{names[0]} likes this"
      exit
    when 2
      return "#{names[0]} and #{names[1]} like this"
      exit
    when 3
      return "#{names[0]}, #{names[1]} and #{names[2]} like this"
    else
      return "#{names[0]}, #{names[1]} and #{names.size-2} others like this"  end
     #return "%s, %s and %d others like this" % [names[0], names[1], names.length - 2]

end