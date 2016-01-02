class MyString < String
  attr_accessor :method
  
  def initialize(str) @method= str  end

  def method_missing(name) puts "No method name: #{name} found"  end
  
  def dynamic() puts "works" end

end

