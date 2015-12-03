class Shelter
	attr_accessor :name, :animals, :clients

	def initialize (name)
		@name = name
		@animals = []
		@clients = []
	end

	def add_animal(a)
		@animals << a#.split(",")
	end

	def add_client(t)
		@clients << t#.split(",")
	end
	
	def to_s
	    "Name: #{@name}
	    Animals: #{@animals.join(', ')}
	    Clients: #{@clients.join(', ')}"
	end
end

