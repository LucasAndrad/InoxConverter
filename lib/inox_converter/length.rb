module InoxConverter
	class Length < Converter

		def initDictionary
      @dictionary = Hash.new
      @dictionary = {
        "km" => 1000,
        "hm" => 100,
        "dam" => 10,
        "m" => 1,
        "dm" => 0.1,
        "cm" => 0.01,
        "mm" => 0.001,
        "mile" => 1609.34,
        "yard" => 0.9144,
        "feet" => 0.3048,
        "count" => 0.0254
      }
    end
		
	end
end