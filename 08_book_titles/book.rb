class Book
  #NOTE: read on ruby setter/getter method to do this exercise
  def title=(title)
    # Possible refactor: Consider changing `select` method to something to make this next line work
    # @title = title.split(" ").select{|x| !['the','a','an','and','in','of'].include?(x)}.map(&:capitalize).join(" ")
    array = title.split(" ")
    array.each do |x|
      unless ['the','a','an','and','in','of'].include?(x)
        x.capitalize! #need to have ! to save the result in the array
      end
    end
    if array.size > 0
      array[0].capitalize!
    end
    @title = array.join(" ")
  end

  def title
    @title
  end
end
