module InoxConverter
	class Converter

		@dictionary

		def initialize
			puts "Initializing Converter"
			@dictionary = 30
		end

		def convert
			# Non-optional implementation
			raise NotImplementedError.new("Convert method not implemented")
		end

		def getInDictionary(unit)
			# Non-optional implementation
			raise NotImplementedError.new("Convert method not implemented")
		end

		def addUnitInDictionary(newUnit, newRate)
			# Non-optional implementation
			raise NotImplementedError.new("Convert method not implemented")
		end

		def getDictionary
			return @dictionary
		end

	end
end
