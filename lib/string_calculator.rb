module StringCalculator

  def self.add(string)
    if string.nil? || string.empty?
      0
    end
    numbers = string.gsub('\n', ',').split(',').map(&:to_i)
    if numbers.any? {|number| number < 0}
      raise 'Negative numbers not allowed'
    end

    numbers.inject(0){|sum,x| sum + x }
  end

end
