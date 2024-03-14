module Calculator

  def self.add(stringInput)
    return stringInput.to_i unless stringInput.include?(',')
    arr = convert_to_array(stringInput)
    return arr.inject{|sum, arr_element| sum + arr_element}
  end

  
  def self.convert_to_array(stringInput)
    return stringInput.split(',').map{ |i| i.to_i}
  end

  
end