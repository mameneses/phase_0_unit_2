# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode
# create a class called 'Song'
# define a method initialize with the arguments of (song, artist)
# create instance variable where @song = song and @artisit = artist
# define a method called 'play' that plays a specific song
# create a class called 'Playlist'
# define a method intiailze with 'song' as an argument
# create an instance vairable where @song = song
# create an empty array of '@playlist'
# define a method called 'add' that acccepts multiple arguments (*splat) of 'songs'
# have the 'add' method push the songs to the playlist array
#  define a method 'num_of_tracks' that counts the playlist array
#  define a method 'remove' and deletes a song from the playlist
#  define a method 'play_all' which plays each song in order
#  define a method 'display' which puts each element in the playlist array


# Initial Solution
class Song
	attr_reader :song, :artist

	def initialize (song,artist)
		@song = song
		@artist = artist
	end
	def play 
		puts "Now playing #{@song} by #{@artist}"
	end
end

class Playlist 
	attr_reader :song
	def initialize (*song)
		@song = song 
		@playlist = []
		@playlist << @song
	end
	def add (*song)
		@playlist << song
	end
	def num_of_tracks
		@playlist.count	
	end
	def remove(track)
		@playlist.delete(track)
	end
	def play_all
		@playlist.each do |song|
			puts "Now paying #{@song}" 
		end
	end

	def includes? (song)
		@playlist.include?(song)
	end

	def display
		@playlist.map do |song|
			puts song
		end
	end
end

# Refactored Solution
# there is no repetative code that i coule find to refactor
# and i feel this the methods are wrtien in a concise manor.





# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
puts my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
puts my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 
# I enjoyed this assignment as well. I enjoyed thinking about how i was going to
# build this application which translated into my psuedo code. I enjoyed actually
# building the code and figuring out what worked and what didn't work. My issue 
# came with displaying of the information. I wanted to display an object instead
# of the object ID which i was unable to understand. After talking with a tutor
# i was told to look into Attribute reader/writer, but with my research i still 
# struggle to understand and utilitze these tools. I was able to gain confidence
# in using methods and flows of classes. 
#