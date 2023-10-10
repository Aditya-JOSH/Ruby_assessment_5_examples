module ModuleA
    def message
      puts "Module A"
    end
  end
  
  module ModuleB
    def message
      puts "Module B"
    end
  end
  
  class MyClass
    include ModuleA
    prepend ModuleB
  
    def message
      super
      puts "Class method"
    end
  end
  
  obj = MyClass.new
  obj.message
  