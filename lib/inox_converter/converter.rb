module InoxConverter
	class Converter

		private dictionary

		def initialize
			puts "Initializing Converter"
			Length.getDictionary
		end

		def convert
			# Non-optional implementation
			# raise NotImplementedError.new("Convert method not implemented")

		end

		def getInDictionary(unit)
			# Non-optional implementation
			raise NotImplementedError.new("Convert method not implemented")
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
