module InoxConverter
	class Converter

		@dictionary

		def initialize
			puts "Initializing Converter"
			self.initDictionary
		end

		def convert
			# Non-optional implementation
			# raise NotImplementedError.new("Convert method not implemented")

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
