module InoxConverter
	class Mass < Converter

    # base unit: gram
    def initDictionary
      @dictionary = Hash.new
      @dictionary = {
        "tonne" => 1**6,
        "kilogram" => 1000,
        "gram" => 1,
        "miligram" => 0.001,
        "microgram" => 1**-6,
        "imperial ton" => 1.016**6,
        "us ton" => 907185,
        "stone" => 6350.29,
        "pound" => 453.592,
        "gram" => 28.3495
      }
    end
		
  end
end