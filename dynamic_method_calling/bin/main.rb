require_relative "../lib/mystring.rb"

instance = MyString.new(gets.chomp)
instance.send(instance.method)
