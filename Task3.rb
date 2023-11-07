#Proc ignore argument miss matches
procA = Proc.new do |x| 
  puts "A proc #{x}"
end

procA.call 
procA.call 3  # Both give results


#Lambda is strict related to number of arguments passed
lambdaA = lambda {|x| 
  puts "A lambda with argument #{x}"
}

# lambdaA.call(1,2) // Error
lambdaA.call(1)




#******************************************************************************************************
# Proc's return will return(terminate) the method too 
# While lambda first return from it self perform the remaining function of a method and then return(terminate) from method


puts "\n********Testing Proc return explicit"

class Task3Proc
  def aMethod
    puts "In the method before proc"

    procA = Proc.new do 
      puts "In the proc"
      return "Return from Proc"
    end
    x = procA.call
    puts "#{x}"
    puts "In the method after proc" # Not Reachable statement

    return "Returned From Method" # Not Reachable statement
  end
end

puts Task3Proc.new.aMethod #Expected method return but here proc will be returned

puts "\n********Testing lambda return explicit"
class Task3Lambda
  def aMethod
    puts "In the method before lambda"

    lambdaA = lambda {
      puts "In the lambda"
      return "Return from lambda"
    }
    x = lambdaA.call
    puts "#{x}"
    puts "In the method after lambda" # Reachable statement
    return "Returned From Method"
  end
end

puts Task3Lambda.new.aMethod




#******************************************************************************************************
# By default In Ruby last statement will be returned automatically if return statament is not mentioned
# But in this case the proc will also act as a simple return (only return from proc instead of method termination)

puts "\n********Testing Proc return implicit"

class Task3ProcImplicit
  def aMethod
    puts "In the method before proc"

    procA = Proc.new do 
      puts "In the proc"
      y = 15
    end
    x = procA.call
    puts "Value Returned from proc #{x} "

    puts "In the method after proc" # Reachable statement
    return "Returned From Method" # Reachable statement
  end
end

puts Task3ProcImplicit.new.aMethod

puts "\n********Testing lambda return implicit"
class Task3LambdaImplicit
  def aMethod
    puts "In the method before lambda"

    lambdaA = lambda {
      puts "In the lambda"
      4
    }
    x = lambdaA.call
    puts "Value returned from lambda #{x}"

    puts "In the method after lambda" # Reachable statement
    return "Returned From Method" # Reachable statement
  end
end

puts Task3LambdaImplicit.new.aMethod