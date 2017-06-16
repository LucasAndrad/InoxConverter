module InoxConverter
	class Area < Converter

    # base unit: square meter
    def initDictionary
      @dictionary = Hash.new
      @dictionary = {
        "square kilometre" => 10**6,
        "square kilometer" => 10**6,
        "square metre" => 1,
        "square meter" => 1,
				"square centimeter"=> 10**-4,
				"square centimetre"=> 10**-4,
        "square mile" => 2.59**6,
        "square yard" => 0.836127,
        "square foot" => 0.09290,
        "square inch" => 0.00064516,
        "hectare" => 10000,
        "acre" => 4046.86
      }
    end

  end
end
