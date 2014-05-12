# U2.W6: Create a BoggleBoard Class


# I worked on this challenge with: Britney Van Valkenburg.


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard 
  def initialize(board)
    @board = board
  end

  def create_word(*coords)
    coords.map { |coord| @board[coord.first][coord.last]}.join("")
  end

  def get_row(row)
    @board[row]
  end 

  def get_col(col)
    @board.map {|row| row[col]}
  end

end

# 4. Refactored Solution
class BoggleBoard
  def initialize(board)
    @board = board
  end

  def create_word(*coords)
    coords.map { |coord| @board[coord.first][coord.last]}.join("")
  end

  def get_row(row)
    @board[row]
  end 

  def get_col(col)
    @board.map {|row| row[col]}
  end
  
  def board
    @board
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 
# create driver test code to retrieve a value at
#  a coordinate here:
p boggle_board.create_word([0,0]) == "b"
p boggle_board.create_word([3,2]) == "k"

# implement tests for each of the methods here:
p boggle_board.create_word([2,1], [1,1], [1,2], [0,3])  == "code"
p boggle_board.create_word([0,1], [0,2], [1,2]) == "rad"
p boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"

p boggle_board.get_row(1) == ["i", "o", "d", "t"]
p boggle_board.get_col(1) == ["r", "o", "c", "a"]

p boggle_board.get_row(0).join("")
p boggle_board.get_row(1).join("")
p boggle_board.get_row(2).join("")
p boggle_board.get_row(3).join("")

p boggle_board.get_col(0).join("")
p boggle_board.get_col(1).join("")
p boggle_board.get_col(2).join("")
p boggle_board.get_col(3).join("")

boggle_board.board.length.times do |x|
    puts boggle_board.get_row(x)
end

boggle_board.board[0].length.times do |x|
    puts boggle_board.get_col(x)
end

# boggle_board.each do |row|
#   row
# end

# # Assuming all boards are square
# boggle_board.each_index do |col|
#   boggle_board.get_col(col)
# end



# 5. Reflection 
# I was confused by this assignment at first because when i orginially
# did this assignment i had already implements some of the strategies that 
# were requested so it did not take much adjusting of the original code. This
# includes how to write the test code. It was nice to pair with Brit on the 
# assignment so i could better understand what was being asked and to get other
# insight on the driver code.
#