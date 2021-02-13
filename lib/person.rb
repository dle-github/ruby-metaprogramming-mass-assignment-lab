class Person
  def initialize(input)
    p "initialize [Person] class with hash [#{input}]"
    input.each do |key, value|
      p "create attr_accessor for [#{key}]" 
      self.class.attr_accessor(key)
      p "sets key [#{key}] with value of [#{value}]" 
      self.send(("#{key}="), value)
    end
  end
end