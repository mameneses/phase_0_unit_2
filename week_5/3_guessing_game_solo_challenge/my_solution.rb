# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge myself.

# 2. Pseudocode

# Input: answer  and guess
# Output: :high, :low or correct answer
# Steps:
# 1. define a method intilize with an argument of 'answer'
# 2. creater an instance variable'@answer' and set it equal to the argument answer
# 3. defin a method called guess with an argument of 'guess'.
# 4. if @guess is less than @answer return symbol ':high' 
# 5. elsif @guess is more than @answer reurn symbol ':low'
# 6. elsif @guess is equal to @answer return @answer
# 7. define a metho 'solved?'
# 8. 


# 3. Initial Solution


class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess (guess)
    @guess = guess
    @high = :high
    @low = :low
    @correct = :correct
    if @guess > @answer
      return @high
    elsif @guess < @answer
      return @low
    elsif
      @guess == @answer
      return @correct
    end
  end
  def solved?
    if @guess == @answer
      return true
    end
  end
end


# 4. Refactored Solution
#
#
#
#
#
#
# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(50)

puts game.guess(10) == :low

puts game.guess(100) == :high

puts game.guess(50) == :corret

puts game.solved? == true 



# 5. Reflection 
