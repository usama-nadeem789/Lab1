lambdaA = lambda { |array|
  newArray = array.uniq
  return newArray
}


procA = Proc.new do |lambdaA , array|

  puts "Orignal array \n#{array}"
  returnedArray = lambdaA.call array
  puts "\nDuplicate Removed \n#{returnedArray}"

end

array = [1,2,2,5,3,4,5,6]
procA.call lambdaA, array