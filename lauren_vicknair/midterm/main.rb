require_relative 'Animal'
require_relative 'Client'
require_relative 'Shelter'
require_relative 'seed'

all_animals = []
all_clients = []

shelter1 = Shelter.new("Outer Haven")


puts "Choose an option:
A. Create an Animal
B. Create a client
C. Display all animals
D. Display all clients
E. Adopt a pet
F. Put pet up for adoption
G. Quit"

response1 = gets.chomp.downcase

if response1 == "g"
	puts "Goodbye"
end


while response1 != "g" do

	if response1 == "a"
		puts "Name?"
		name = gets.chomp
		puts "What kind of animal is it?"
		animal = gets.chomp
	 
		a = Animal.new(name, animal)


		puts "Does your #{a.species} #{a.name} have toys? If yes, please list. Otherwise press enter."
		toy1 = gets.chomp.downcase
		a.add_toy(toy1)

		all_animals << a
		shelter1.add_animal(a)

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

		shelter1.add_client(c)
		all_clients << c


		puts c

	elsif response1 == "c"
		puts Animal.all

	elsif response1 == 'd'
		puts Client.all

	elsif response1 == 'e'
		puts "Choose an animal by name"
		puts Animal.all

		adoptee = gets.chomp.downcase

    # if Animal.animals.include?(adoptee)
    #   shelter1.animals.

    # end
   # shelter1.animals.delete_at(shelter1find.index(adoptee)

	

	end

	puts "Choose an option:
A. Create an Animal
B. Create a client
C. Display all animals
D. Display all clients
E. Adopt a pet
F. Put pet up for adoption
G. Quit"

	response1 = gets.chomp.downcase
end


		
