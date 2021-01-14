require 'pry'

class String

  attr_accessor :string

  def initialize(string)
    @string = string
  end 

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false 
    end 
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false 
    end 
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false 
    end 
  end

  def count_sentences
    # [a-z]
    # [abc]
    # [.?!]
    # + - one or more
    # * - zero or more
    self.split(/[.?!]+/).count
  end
end
