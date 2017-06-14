module InoxConverter
	class Converter

		@dictionary = 10

		def initialize
			puts "Initializing Converter"
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

	end
end
