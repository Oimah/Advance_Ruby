require_relative "../lib/dynamic_method.rb"

instance = DynamicMethod.new
instance.send(instance.method_name)