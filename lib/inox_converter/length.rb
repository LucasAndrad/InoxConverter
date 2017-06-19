module InoxConverter
	class Length < Converter

    # base unit: meter
    def initDictionary
      @dictionary = Hash.new
      @dictionary = {
        "kilometre" => 1000,
        "kilometer" => 1000,
        "km" => 1000,
        "hectometer" => 100,
        "hectometre" => 100,
        "hm" => 100,
        "decameter" => 10,
        "decametre" => 10,
        "dam" => 10,
        "metre" => 1,
        "meter" => 1,
        "m" => 1,
        "decimeter" => 0.1,
        "decimetre" => 0.1,
        "dm" => 0.1,
        "centimeter" => 0.01,
        "centimetre" => 0.01,
        "cm" => 0.01,
        "milimeter" => 0.001,
        "milimetre" => 0.001,
        "mm" => 0.001,
        "mile" => 1609.34,
        "mi" => 1609.34,
        "yard" => 0.9144,
        "yd" => 0.9144,
        "feet" => 0.3048,
        "ft" => 0.3048,
        "inch" => 0.0254,
        "in" => 0.0254
      }
    end
		
  end
end