require "./myClasses.rb"

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