class A
  def initialize
    introduction
  end

  def introduction
    puts "\nHello! I am A"
  end
end

class B < A
  def initialize
    
    introduction
  end

  def introduction
    super()
    puts "Hello! I am B child of A"
  end
end

class C < A
  def initialize
    introduction
  end

  def introduction
    super()
    puts "Hello! I am C child of A"
  end
end

# creating obj of which auto calls introduction functions
A.new

B.new

C.new

