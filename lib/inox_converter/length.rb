module InoxConverter
	class Length < Converter

		def initDictionary
      dictionary = Hash.new
      dictionary = {
        "mm" => 0.01,
        "m" => 1,
        "km" ? "kilometro" => 1000
      }
      puts dictionary["km"]
      puts dictionary["kilometro"]
      return dictionary
    end

    def getDictionary
      return initDictionary
    end
		
	end
end