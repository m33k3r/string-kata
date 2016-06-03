module StringCalculator

  SINGLE_NEGATIVE_NUMBER_ERROR = 'Negative numbers not allowed.'
  MULTIPLE_NEGATIVE_NUMBER_ERROR = 'The following exist:'

  def self.add(string)
    if string.nil? || string.empty?
      0
    end
    numbers = string.gsub('\n', ',').split(',').map(&:to_i).select { |element| element < 1000}
    negatives = numbers.select{ |element| element < 0}
    if negatives.any?
      if negatives.length > 1
      raise "#{SINGLE_NEGATIVE_NUMBER_ERROR} #{MULTIPLE_NEGATIVE_NUMBER_ERROR} #{negatives}"
      end
      raise SINGLE_NEGATIVE_NUMBER_ERROR
    end


    numbers.inject(0){|sum,x| sum + x }
  end

end
