#1

rand_array = [12313, 232, 22342, 2342421, 131231, 354353, 677685, 3422332, 97867876]

def my_max(nums)
   current_max = 0
   nums.each do |x|
       if x > current_max
           current_max = x
       end
   end
   return current_max
end

puts my_max(rand_array)




require 'httparty'
require 'json'

def search_itunes(term)
 base = "https://itunes.apple.com/search?term="
 url =  base + term
 gems = HTTParty.get(url)

 JSON.parse(gems)
end

def list_songs_by_band(term)
  response = search_itunes(term)
  results = response["results"]

 #loop over results here and print out each song title

   results.each do |track|
   puts track["trackName"]
 end
end

def play_random_song_from_band(term)
   response = search_itunes(term)
   results = response["results"]
   pick = results[rand(results.length-1)]# Fill in this blank with the code that will grab a random member of the results array. Look at the Ruby Docs to find it.
   system("open", pick["previewUrl"]) 
end


## this method will run the whole application: 
def lets_go
 puts "Welcome to Tunr!"
 play = 'Y'
 upvotes ={}
 while play == 'Y'
   puts "What type of search will you do? (P = 'play random song by band', T = 'show band's tracks)"
   type_of_search = gets.chomp.downcase

   if type_of_search == ""
     puts "We did not recived any digit from you, please enter your search"
     exit
   elsif type_of_search == 'p'
     puts "enter your favorite band"
     term = gets.chomp.gsub(' ', '+') # gsub? What's that? Why?
     play_random_song_from_band(term)
   elsif type_of_search == 't'
     puts "enter your favorite band"
     term = gets.chomp.gsub(' ', '+')
     list_songs_by_band(term)
   end

   puts "Continue? (y/n)"

   play = gets.chomp.upcase

   upvotes[term] ||= 0
   if type_of_search.include?(term) and type_of_search.include?(term)
    upvotes[term] += 10
   else type_of_search.include?(term) || type_of_search.include?(term)
    upvotes[term] += 5
   end

   puts "New music searched! #{term}, Current Upvotes: #{upvotes[term]y}"

   
 end
end

#calls the method, makes the fun happen
lets_go

​[5:04] 
jukebox

​[5:04]


#Part 2 - Jukebox
#1. What is the method that returns a random element from an array?
#    rand
#
#(rand *10).to_i + 1
#
#2. .gsub(' ', '+') # gsub? What's that? Why?
#
#gsub removes whatever you would like and replaces it with whatever you may like

#In your words, explain how the loop in tunr.rb works to let the user continually keep playing new songs or requesting new song lists.
# not sure 





