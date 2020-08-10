# require_relative 'methods.rb'
require './myMethods.rb'
# play with classes 
class Animal 
    # attach the methods and constants in MyModule to this class
    include MyModule
    # have to manually set getters, setters, or both 
    attr_reader :species, :color
    attr_writer :color
    attr_accessor :name
    # initialize with variables taken as arguments 
    def initialize (species = "None", color="blue")
        @species = species
        @color = color
        # can fire methods when the instance is created 
        p @species
    end
end

# make another class that inherits from Animal 
class Mammal < Animal
    attr_accessor :fur 
    def initialize(fur=false)
        @fur = fur
    end 

    def walk 
        p "This animal is walking"
    end

    def hasFur?
        if self.fur
            has = "does"
        else
            has = "does not"
        end
        p "This animal #{has} have fur"
    end
end