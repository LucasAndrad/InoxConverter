module InoxConverter
	class Mass < Converter

    # base unit: gram
    def initDictionary
      @dictionary = Hash.new
      @dictionary = {
        "tonne" => 10**6,
        "metric ton" => 10**6,
        "t" => 10**6,
        "kilogram" => 1000,
        "kg" => 1000,
        "gram" => 1,
        "g" => 1,
        "miligram" => 0.001,
        "mg" => 0.001,
        "microgram" => 10**-6,
        "imperial ton" => 1016000,
        "us ton" => 907185,
        "stone" => 6350.29,
        "st" => 6350.29,
        "pound" => 453.592,
        "lb" => 453.592,
        "ounce" => 28.349,
        "oz" => 28.349
      }
    end

  end
end
