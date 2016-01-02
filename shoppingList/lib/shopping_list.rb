class ShoppingList

  def initialize()
    @cart = []
  end

  def add_item(item)
    item_split =item.split(",") if !item.empty?
    @cart << {:name => item_split[0], :qunatity => item_split[1]} if item_split
    add_item(gets.chomp) unless item.empty?
    show if item.empty?
  end

  def show
    puts "|item|qunatity|"
    @cart.each{|hash| hash.each {|key, value| print "|#{value}|"} 
      puts 
    }
  end
  def items(&block)
    ShoppingList.new.instance_eval(&block)
  end
end

