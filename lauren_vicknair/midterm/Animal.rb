class Animal
	attr_accessor :name, :species, :toys

	def initialize (name, species)
		@name = name
		@species = species
		@toys = []
	end

	def add_toy(t)
		@toys << t.split(",")
	end

	def self.all
	 ObjectSpace.each_object(self).to_a
	end
	
	def to_s
    "Name: #{@name}
    Species: #{@species}
    Toys: #{@toys.join(', ')}"
	end
end