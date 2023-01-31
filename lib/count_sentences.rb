require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false 
    end 
  end 

  def question?
    if self.end_with?("?")
      true
    else
      false
    end

  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end
end

# string.scan(/[^\.!?]+[\.!?]/).map(&:strip).count # scan has regex to split string and strip will remove trailing spaces.
# # => 4 