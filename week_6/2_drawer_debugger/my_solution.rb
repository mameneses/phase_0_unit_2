# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

	attr_reader :contents

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item (item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing? it is selecting the last item from the array.
		@contents.delete(item)
	end

	def dump  # what should this method return? an empty contents array.
		@contents = []
		puts "Your drawer is empty."
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end

end 

class Silverware
	attr_reader :type

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		puts "cleaning the #{type}"
		@clean = true
	end

	def clean
		if @clean == true
			puts "your #{type} is clean"
		elsif 
			puts "your #{type} is dirty"
		end
	end
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 

silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents

sharp_knife = Silverware.new("sharp_knife")

silverware_drawer.add_item(sharp_knife)
silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? an empty drawer


fork = Silverware.new("fork")
silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat
fork.clean

#Release 4
spork = Silverware.new("spork")
silverware_drawer.add_item(spork)
silverware_drawer.view_contents
spork.eat

# DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Assertion failed!" unless yield
end


assert {spork.clean == false}


# 5. Reflection 
# I had a great time with this exercise. I feel very comfortable reading code
# through and understanding what is expected. It helped to create clear 
# guidelines for what needed to be in the code. I was having some issues 
# figuring out the best way to run an assert method driver test on this code
# using the prior examples. With some help from Johnny Wu i gained some better
# understanding and found that it may not be the best method for running a driver
# test on this code using 'yield' but i was not completely clear on what may be better. 
#