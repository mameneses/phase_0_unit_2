# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: answer  and guess
# Output: :high, :low or correct answer
# Steps:
# 1. 
#


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess (guess)
    if guess < @answer
      return :high
    elsif guess > @answer
      return :low
    elsif
      guess == @answer
      return @answer
    end
  end
  def solved?
    
  end
  # Make sure you define the other required methods, too
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
