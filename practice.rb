p "this is practice!"

# play with classes 
class Animal 
    # have to manually set getters, setters, or both 
    attr_reader :species, :color
    attr_writer :color
    attr_accessor :name
    # initialize with variables taken as arguments 
    def initialize (species = "None")
        @species = species
        # or set default values here: 
        @color = "blue"
        # can fire methods when the instance is created 
        p @species
    end
end

dog = Animal.new("Dog")
cat = Animal.new()
p cat.color
# reader & writer: 
cat.color = 'green'
p cat.color 
# accessor; 
cat.name = 'Jerry' 
p cat.name
