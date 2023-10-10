class MyClass
end

obj = MyClass.new

def obj.my_singleton_method
  puts "This is a singleton method for obj."
end

singleton_class = class << obj
  self
end

def singleton_class.another_singleton_method
  puts "This is another singleton method for obj."
end

obj.my_singleton_method
singleton_class.another_singleton_method 
