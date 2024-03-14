module Calculator

  def self.add(stringInput)
    raise_exception_if_negative_numer(stringInput)
    return 0 if stringInput.empty?
    arr = convert_to_array(stringInput)
    return arr.inject{|sum, arr_element| sum + arr_element}
  end

  
  def self.convert_to_array(stringInput)
    delimitter = set_delimitter(stringInput)
    return stringInput.split(delimitter).map{ |i| i.to_i} unless stringInput.include?("\n")
    return stringInput.gsub("\n", delimitter).split(delimitter).map{ |i| i.to_i}
  end

  def self.set_delimitter(stringInput)
    return stringInput.include?('//') ? stringInput[2,1] : ','
  end

  def self.raise_exception_if_negative_numer(stringInput)
    negatives = convert_to_array(stringInput).select{ |i| i < 0 }
    raise "Negatives not allowed: #{negatives.join(',')}" if negatives.any?
  end
  
end