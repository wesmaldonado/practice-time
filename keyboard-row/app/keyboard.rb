# https://leetcode.com/problems/keyboard-row/#/description
class Keyboard
  def initialize(words)
    @words = words.map{|w| w.downcase}
    puts @words
  end
  def words
    []
  end
end 
