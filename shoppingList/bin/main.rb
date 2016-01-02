require_relative "../lib/shopping_list.rb"

ShoppingList.new.items do
  puts "enter comma seperated item"
  add_item(gets.chomp)
end