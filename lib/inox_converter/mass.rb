module InoxConverter
	class Mass < Converter

    # base unit: gram
    def initDictionary
      @dictionary = Hash.new
      @dictionary = {
        "tonne" => 10**6,
        "kilogram" => 1000,
        "gram" => 1,
        "miligram" => 0.001,
        "microgram" => 10**-6,
        "imperial ton" => 1016000,
        "us ton" => 907185,
        "stone" => 6350.29,
        "pound" => 453.592
      }
    end

  end
end
