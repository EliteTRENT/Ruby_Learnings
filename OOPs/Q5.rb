class Animal
  def initialize(type)
    @type = type
  end

  def make_sound
    puts "Some sound.."
  end

  def descibe_animal
    puts "Animal Type: #{@type}"
    puts "Sound: #{self.make_sound}"
  end
end

class Dog < Animal
  def initialize
    super("Dog")
  end

  def make_sound
    return "Woof"
  end
end

class Cat < Animal
  def initialize
    super("Cat")
  end

  def make_sound
    return "Meow"
  end
end

dog = Dog.new
cat = Cat.new
dog.descibe_animal
cat.descibe_animal

