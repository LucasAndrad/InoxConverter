module InoxConverter
	class Length < Converter

		def initDictionary
      @dictionary = Hash.new
      @dictionary = {
        "mm" => 0.001,
        "m" => 1,
        "km" => 1000
      }
    end
		
	end
end