class Shelter
	attr_accessor :name, :animals, :clients

	def initialize (name)
		@name = name
		self.animals = []
		self.clients = []
	end

	def add_animal(a)
		@animals << a
	end

	def add_client(t)
		@clients << t
	end
	
	def to_s
	    "Name: #{@name}
	    Animals: #{@animals}
	    Clients: #{@clients}"
	end
end

