class Client
	attr_accessor :name, :age, :pets

	def initialize (name, age)
		@name = name
		@age = age.to_i
		self.pets = []
	end

	def add_pet(p)
		@pets << p
	end
	
	def to_s
	    "Name: #{@name}
	    Age: #{@age}
	    Pets: #{@pets}"
	end
end