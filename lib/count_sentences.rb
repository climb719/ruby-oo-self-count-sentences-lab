require 'pry'

class String

  def sentence?
    if self.end_with?(".") #self keyword in the body of method to refer to the string on which the method is being called
      return true          #end_with? method to determine what the final character in a string
    else false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else false
    end
  end

  def count_sentences
    self.split(/[.?!]/).grep(/\S/).count  #first need to split the string on any and all periods, question marks and exclamation marks
  end                          # use /[.?!]/ regex to search for specific punctuation -one of the characters within the [ ]
                               # add .grep with regex argument (/+/\S/) -select strings that have only one non-space character
end