animal = gets.chomp

  def animal.speak
    upcase
    puts "The #{self.upcase} says miaow"
  end

mammal = gets.chomp
class << mammal

  def speak_2
    puts "The #{self.upcase} says WOOF!"
  end

end

animal.speak #=> The CAT says miaow
#mammal.speak => undefined method `speak' for "dog":String (NoMethodError)
#animal.speak_2 =>undefined method `speak_2' for "cat":String (NoMethodError)
mammal.speak_2 #=> The DOG says WOOF!