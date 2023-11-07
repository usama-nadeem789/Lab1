def cleanDataMethod(data)

  if data.is_a?(Hash)
    data.each do |key, value|

      if value.is_a?(Hash) || value.is_a?(Array)
        cleanDataMethod(value)

      elsif value == "N/A" || value == "-" || value == ""
          data.delete(key)
      end

    end

  elsif data.is_a?(Array)
    data.each do |item|

      if item.is_a?(Hash) || item.is_a?(Array)
        cleanDataMethod(item)
        
      elsif item == "" || item == "-" || item == "N/A"
        # puts "Removed"
        data.delete(item)

      end
    end
  end
end

data = {
  "name" => { "firstName" => "Robert", "middleName" => "", "lastName" => "N/A" },
  "age" => 20,
  "DOB" => "-",
  "hobbies" => ["running", "coding", "N/A","u", "","n","-"],
  "education" => { "highschool" => "N/A", "college" => "Yale" },
  "usama" => "N/A",
  "me" => "mine",
  "why" => "-"
}

puts cleanDataMethod(data)
