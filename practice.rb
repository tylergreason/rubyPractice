# create a module for classes and their instances to inherit 
module MyModule 
    def myModuleMethod
        p "This is a method attached to my module"
    end
end


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

dog = Animal.new("Dog")
cat = Animal.new()
p cat.color
# reader & writer: 
cat.color = 'green'
p cat.color 
# accessor; 
cat.name = 'Jerry' 
p cat.name

human = Mammal.new(true)
human.walk
human.hasFur?
whale = Mammal.new 
whale.hasFur?
# call method of module attached to this instance's class's parent class
# also, ruby doesn't require paranthesis to call function but it's a good habit to keep 
human.myModuleMethod


cat.myModuleMethod()