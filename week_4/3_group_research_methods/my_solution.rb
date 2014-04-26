# U2.W4: Research Methods

# SHARED ARRAY AND HASH

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}


# PERSON 1 SOLUTIONS (KIRSTIN) =>
# ( 1 of 2 ) =>

def my_array_finding_method(source, thing_to_find)
  result = Array.new
  source.each do |x|
  	if !x.is_a?(String)
  		next
  	elsif x.include?(thing_to_find)
  		result.push(x)
  	end
  end
  result
end

########### 
########### 

# ( 2 of 2)

def my_hash_finding_method(source, thing_to_find)
  match = Array.new
  source.each do |k, v|
  	if v == thing_to_find
  		match.push(k)
  	end
  end
  match
end


# DRIVER CODE FOR PERSON 1 (KIRSTIN) =>
p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]

# Identify and describe the ruby method you implemented. 
# my_array_finding_method takes an array and a string, then returns an array with
# the strings from the source array that contain the string you passed in.
# my_hash_finding_method takes a hash and a number, then returns an array with
# the strings of the keys whose values equal the number you passed in.




########### ########### ########### ########### 
########### ########### ########### ########### 



# PERSON 2 SOLUTIONS (SCOTT)
# ( 1 of 2 ) =>

def my_array_modification_method(source, thing_to_modify)
  source.map do |x|
    if x.is_a?(Integer)
      x += thing_to_modify
    else
      x
    end
  end
end

# Identify and describe the ruby method you implemented. 
# Used the .map method to modify the data in the array (as opposed to return a new array). Checked # to see if element was an Integer, if so it was modified, else just return element unmodified.

########### 
########### 

# ( 2 of 2 ) =>

def my_hash_modification_method(source, thing_to_modify)
    source.map do |x, y|
      source[x] = y + thing_to_modify
    end
    source
end

# Used map method on the hash to modify existing data. Set the key
# equal to the (value plus the thing_to_modify argument). Returned modified source hash.

# DRIVER CODE FOR PERSON 2 (SCOTT) =>

p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}



########### ########### ########### ########### 
########### ########### ########### ########### 



# PERSON 3 SOLUTIONS (BRITNEY)
# ( 1 of 2 ) =>

def my_array_sorting_method(source)
  source_to_string = []
  source.length.times do |i|
    source_to_string[i] = source[i].to_s
  end
  to_return = source_to_string.sort
  return to_return
end

########### 
########### 

# ( 2 of 2 ) =>

def my_hash_sorting_method(source)
  return source.sort_by {|name, age| age}
end


# DRIVER CODE FOR PERSON 3 (BRITNEY) =>
puts my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 0], ["Ditto", 3], ["Hoobie", 3], ["Poly", 4], ["Bogart", 4], ["Evi", 6], ["George", 12]] 

puts my_array_sorting_method(i_want_pets) == ["2", "3", "I", "I", "but", "have", "only", "pets", "want"]



# REFLECTIONS =>

# I spent a lot of time just trying to figure out why rspec wasn't working properly. It's different
# with JS in that tests without functions will cause an error. I did like looking up new methods,seeing the differences b/w array and hash return new vs modification. I think being able to play around in IRB with these is very helpful, too.

###################################################
###################################################



# Person 4 SOLUTONS (Matias)
# (1 of 2) 

def my_array_deletion_method(source, thing_to_find)
	source.each do |element| 
		if element.include? thing_to_find
			source.delete(element)
		end
	end
end

# I wanted to use the .reject! method which deletes and element fro an array
# if the block withing the {} returns true but when I attempted to write the 
# code as follows:
# source.reject! { |element| element.include?(thing_to_find)}
# It stated 'include?' is an undefined method so i went with the 
# each and delete method which deletes an element from an array.
# Additionally, the test code would not return true because it was using the
# resulting code from person 2 (scott's) solution under the assumption that 
# it changed the origianl array. I did not want to mess with scotts solution
# so i changed the test to match the original array.

##############
##############

# (2 of 2)  

def my_hash_deletion_method(source, thing_to_delete)
	source.reject! { |key,value| key == thing_to_delete }
end
 
# I used the .reject! method to delete the Key and Value where the 
# key == thing_to_delete and change the original string.


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

puts my_array_deletion_method(i_want_pets, "a") == ["I", 3, "pets", "but", "I", "only", 2 ]
puts my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# This took longer than needed because the tet code was not for the 
# source code. Also, i do not understand why the .include? method was not 
# recognized within the .reject! method, when .reject! is looking for a 
# true/false statment.
# 
# 
# 
