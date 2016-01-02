a_new_class = Class.new(Object) do
  attr_accessor :file,:method_name, :records
  
  def initialize(file)
    @file = file
    readfile 
    @method_name = @records[0].chomp.tr(', ', '')
  end
  def readfile
    @records =[]
    File.open(@file) do |record|
      record.each do |row|
         @records << row
      end
    end
  end
  def creat_method
    self.class.send(:define_method,@method_name) {
      @records.drop(1).each {|row|
      puts row
       }
    }  
  end
end

file = File.expand_path("../CreatingClassesfromCSV.csv", __FILE__)
classname = File.basename(file, '.csv')
Object.const_set(classname, a_new_class)
csv_class = Object.const_get(classname)
new_instance = csv_class.new(file)
new_instance.creat_method
new_instance.send(new_instance.method_name)