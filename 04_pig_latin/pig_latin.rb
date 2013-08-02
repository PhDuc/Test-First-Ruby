def translate (string)
  array = string.split(" ")
  array.each do |word|
    index = 0
    temp = ""
    until ['a','e','i','o','u'].include?(word[index]) do
      if (index < word.length-1 && word[index]=='q' && word[index+1]=='u') #special case 'qu'
        temp << word[index,index+2]
        word[index,index+2]=''
      else
        temp << word[index]
        word[index] = ''
      end
    end
    word << temp + "ay"
  end

  array.join(" ")
end
