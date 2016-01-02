class DynamicMethod
  attr_accessor :method_name
  def initialize
    puts "enter method name"    
    @method_name = gets.chomp
    self.class.send(:define_method,@method_name) {
      puts "enter method command"
      instance_eval(gets)
    }    
  end
end

