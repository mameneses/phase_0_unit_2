require_relative "my_solution" 
#=> Make sure you change this to the name of your code file! Save that file
# into this repo. 
def separate_comma(number)
   case number.to_s.length
   when 0..3
      puts number.to_s
   when 4..6
      puts number.to_s.insert(-4,",")
   when 7..9
      puts number.to_s.insert(-4,",").insert(-8,",")
   when 10..12
      puts number.to_s.insert(-4,",").insert(-8,",").insert(-12,",")
   end
end


def random_num(min, max)
   rand(max - min + 1) + min
end

describe "separate_comma" do
   it "returns no comma, when the integer is smaller than 1000" do
      separate_comma(random_num(0, 999)).should match /^\d{1,3}$/
   end
   it "returns one comma, when the integer is between 1000 and 999999" do
      separate_comma(random_num(1000, 999999)).should match /^\d{1,3},\d{3}$/
   end
   it "returns two commas, when the integer is between 1000000 and 999999999" do
      separate_comma(random_num(1000000, 999999999)).should match /^\d{1,3},\d{3},\d{3}$/
   end
end
