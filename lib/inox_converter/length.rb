module InoxConverter
	class Length < Converter

    def initDictionary
      @dictionary = Hash.new
      @dictionary = {
        "kilometre" => 1000,
        "kilometer" => 1000,
        "hectometer" => 100,
        "hectometre" => 100,
        "decimeter" => 10,
        "decimetre" => 10,
        "metre" => 1,
        "meter" => 1,
        "decameter" => 0.1,
        "decametre" => 0.1,
        "centimetre" => 0.01,
        "centimeter" => 0.01,
        "milimetre" => 0.001,
        "mile" => 1609.34,
        "yard" => 0.9144,
        "feet" => 0.3048,
        "count" => 0.0254
      }
    end
		
  end
end