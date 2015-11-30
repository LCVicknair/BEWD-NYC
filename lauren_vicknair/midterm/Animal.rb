class Animal
	attr_accessor :name, :species, :toys

	def initialize (name, species)
		@name = name
		@species = species
		@toys = []
	end

	def add_toy(t)
		@toys << t
	end

	
	def to_s
	    "Name: #{@name}
	    Species: #{@species}
	    Toys: #{@toys}"
	end
end