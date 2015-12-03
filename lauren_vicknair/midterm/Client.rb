class Client
	attr_accessor :name, :age, :pets

	def initialize (name, age)
		@name = name
		@age = age.to_i
		self.pets = []
	end

	def add_pet(p)
		@pets << p.split(",")
	end

	def self.all
	    ObjectSpace.each_object(self).to_a
	end
	
	def to_s
	    "Name: #{@name}
	    Age: #{@age}
	    Pets: #{@pets.join(', ')}"
	end
end