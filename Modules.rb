module A
    def message
      puts "Module A"
    end
  end
  
  module B
    def message
      puts "Module B"
    end
  end
  
  class MyClass
    include B
    prepend A
  
    def message
      puts "Class method"
    end
  end
  
  obj = MyClass.new
  obj.message
  