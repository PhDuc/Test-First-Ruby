def echo(something)
  something
end

def shout(something)
  something.upcase  #upcase will capitalize all, not just one
end

def repeat(something,time=2)
  word = something + " "
  result = (word * time).strip  #strip will cut off whitespaces front and back of a string
  return result
end

def start_of_word(string, length)
  return string[0..length-1]  #string is an array of char
end

def first_word(string)
  array = string.split(" ") #split a string into array using regex as splitter, in this case whitespace
  return array[0]
end

def titleize(title)
  array = title.split(" ")
  little_words = ['the','and','is','a','an','over','in','on','of','or'] #Am I missing any ?
  result = ""

  array.each do |word|
    if ((little_words).include?(word))
      word.downcase
    else
      word.capitalize!
    end
  end
  array[0].capitalize!

  array.each do |word|
    result += word + " "
  end

  return result.strip
end
