# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.


boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# 1. create class 'Boggle'
# 2. define a method 'initialize' and create a parameter of matrix
# 3. set the instance variable '@board' = to matrix. end.
# 1. defin a method create_word and that an parameter of an array 'board'  and a second parameter of 'coords'
# 2. coords should accept two intiger valuses within array and should allow for more pareameters to be passed(*splat)
# 2. for each 'ccords' use '@board' to designate the corresponding value for the 'coords'
# 3. join the results for each 'coords' listed with out any spaces 

# Initial Solution
class Boggle
  def initialize(matrix)
    @board = matrix
  end
  def create_word(*coords)
    coords.map { |coord| @board[coord.first][coord.last]}.join("")
 end
end
# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

game = Boggle.new(boggle_board)

puts game.create_word([0,1], [1,1], [2,1], [3,2]) == "rock"

puts game.create_word([0,1], [1,0], [1,2], [3,3]) == "ride"

# Reflection 
# 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# create a method 'get_row' with a parameter of 'row'
# call the 'row'th element within the array.

# Initial Solution
class Boggle
  def get_row(row)
    @board[row]
  end                
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

puts game.get_row(0) == ["b", "r", "a", "e"]

puts game.get_row(3) == ["t", "a", "k", "e"]
# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# create a method 'get_col' and set a parameter 'col'
# for each each array within the larger array call the 'col'th value and trun it unto an array.

# Initial Solution
class Boggle
  def get_col(col)
    @board[0..(@board.length-1)].map { |x| x[col]}.to_a
  end
end
  

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts game.get_col(1) == ["r", "o", "c", "a"]

puts game.get_col(3) == ["e", "t", "r", "e"]

# Reflection 
