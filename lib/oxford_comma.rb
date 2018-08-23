# returns a string without any additional fomatting when given a 1-element array (FAILED - 1)
#   adds 'and' between elements when given a 2-element array (FAILED - 2)
#   adds commas plus a final 'and' when given a 3-element array (FAILED - 3)
#   correctly formats arrays of lengths greater than three (FAILED - 4)
def oxford_comma(array)#ugly but functional
  if array.count <=2
    return array.join(" and ")

  else
    pop_last_word = [] # create empty array to hold last word
    pop_last_word << array.pop #save last word from "array" to "pop_last_word"
    str = pop_last_word.join #convert last word from array to str
    array_to_str = array.join(", ")# convert rest of array to string and add commas in between
    array_to_str.insert(-1,", and ")# add "and" behind last word of "shortened string"
    array_to_str<<str #add original last word to the end of the rest of the string
    return array_to_str


  end
end
