def cleanDataMethod(data)
  if data.is_a?(Hash)

    data.each do |key, value|

      if value.is_a?(Hash)
        cleanDataMethod(value)
      elsif value.is_a?(Array)
        data[key] = cleanDataMethod(value)
      elsif value == "N/A" || value == "-" || value == ""
          data.delete(key)
      end

    end

  elsif data.is_a?(Array)
    array = []
    data.each_with_index do |item,index|

      if item.is_a?(Array)
        item = cleanDataMethod(item)
      end
      
      if item.is_a?(Hash)
        cleanDataMethod(item)
      
      elsif item == "" || item == "-" || item == "N/A"
        #
      else
        array.push(item)
      end
    end
    return array
  end
end

data = {
  "name" => { "firstName" => "Robert", "middleName" => "", "lastName" => "N/A" },
  "age" => 20,
  "DOB" => "-",
  
  "hobbies2" => ["running", "coding", "N/A","-","","a","b",["a","-","N/A","b","c"]],
  "education" => { "highschool" => "N/A", "college" => "Yale" },
  "usama" => "N/A",
  "me" => "mine",
  "why" => "-"
}

puts cleanDataMethod(data)
