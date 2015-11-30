require_relative 'Animal'
require_relative 'Client'
require_relative 'Shelter'

puts "What is the name of your shelter"
shelter1 = gets.chomp
shelter1 = Shelter.new(shelter1)

puts "Choose an option:
A. Create an Animal
B. Create a client
C. Quit"

response1 = gets.chomp.downcase

if response1 == "a"
	puts "Name?"
	name = gets.chomp
	puts "What kind of animal is it?"
	animal = gets.chomp
 
	a = Animal.new(name, animal)

	puts "Does your #{a.species} #{a.name} have a toy? If yes, please list. Otherwise press enter."
	toy1 = gets.chomp.downcase
	a.add_toy(toy1)

	puts a

elsif response1 == "b"
	puts "Name?"
	name = gets.chomp
	puts "Age?"
	age = gets.chomp

	c = Client.new(name, age)

	puts "Does the client already own a pet? If so list it, otherwise, press enter"
	pet1 = gets.chomp
	c.add_pet(pet1)

	puts c

elsif response1 == "c"
	puts "Goodbye"
end 

		
