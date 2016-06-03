module StringCalculator

  def self.add(string)
    # code to be tested goes here...
    if string.nil? || string.empty?
      0
    end

    string.to_i
  end

  # ...and here when the above becomes too complex.

end
