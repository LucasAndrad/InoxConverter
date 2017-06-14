module InoxConverter
	class Converter

		@dictionary

		def initialize
			puts "Initializing Converter"
			self.initDictionary
		end

		def convert(valueToConvert, firstUnit, secondUnit)
			finalValue = valueToConvert * (getInDictionary(firstUnit) / getInDictionary(secondUnit))
			return finalValue
		end

		def getInDictionary(unit)
			return @dictionary[unit]
		end

		def addUnitInDictionary(newUnit, newRate)
			# Non-optional implementation
			raise NotImplementedError.new("Convert method not implemented")
		end

		def initDictionary
			raise NotImplementedError.new("Dictionary not initialize")
		end

	end
end
