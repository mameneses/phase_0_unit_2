# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Matias Meneses
# 2) Phillip Smith

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food)                   #define the method and setting up the arguments
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}      #
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false  #sets vairable has_fave to false

  my_list.each_key do |k| # checking to see if any of the keys (pie, cake, cookie) are equal to the argument fav_food
    if k == fav_food
      has_fave = true   # setting true to has_fave if 'k' is equal to fav_food
    end
  end
  if has_fave == false  # if variable has_fave is false you are unable to make the food. 
    raise ArgumentError.new("You can't make that food")
  else
    fav_food_qty = my_list[fav_food]  #assinging the variable fav_food_qty to the position zero in my_list fav_food hash --- took out=values_at(fav_food)
  if num_of_people % fav_food_qty == 0           # if number of people is evenly divisable by the fav_food_qty 
    num_of_food = num_of_people / fav_food_qty   # then create new variable equal to num_of_people divide the fave_food_qty 
      return "You need to make #{num_of_food} #{fav_food}(s)." # returning message with the amount of the certain food that we need to make
  else num_of_people % fav_food_qty != 0         # if the number of people is not evenly divisible by the number of fav food
    while num_of_people > 0                      # while there is more than zero people
      if num_of_people / my_list["pie"] > 0        #if the number of people divided by the value at 'pie' is greater than zero
        pie_qty = num_of_people / my_list["pie"]     # create variable 'pie_qty' set to the number of people divided by the value at pie 
         num_of_people = num_of_people % my_list["pie"] # reassigning the value of number of to the number of people we need to feed. 
      elsif num_of_people / my_list["cake"] > 0     # doing the same thing with pie, but with cake. see line 24-26.
        cake_qty = num_of_people / my_list["cake"]
        num_of_people = num_of_people % my_list["cake"]
      else
        cookie_qty = num_of_people                   # the number of cookies is equal to the remaining people.
      num_of_people = 0
      end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)." # states what you need to make.
  end
  end
end


#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(42, "cake") == "You need to make 7 cake(s)." # WHAAAAAT? I thought I said I wanted cake!
