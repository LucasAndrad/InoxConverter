module InoxConverter
	class Converter

		@dictionary = nil

		def initialize
			puts "Initializing Converter"
			self.initDictionary
		end


		# Template to convert
		def convert(valueToConvert, firstUnit, secondUnit)
			#First Step
			finalValue = valueToConvert.round(10)
			#Second Step
			finalValue *= getInDictionary(firstUnit).round(10)
			#Third step
			finalValue /= getInDictionary(secondUnit).round(10)
			#Fourth step
			return finalValue.round(10)
		end

		def getInDictionary(unit)
			return @dictionary[unit]
		end

		def initDictionary
			raise NotImplementedError.new("Dictionary not initialize")
		end

		# newUnit: name of the new unit to be added
		# newRate: reason between new unit and base unit
		# (example: kilometer it's 1000x greater than meter, so the newRate should be 1000)
		# returns bool - true if succeed, false if fails
		def addUnit(newUnit, newRate)

			if @dictionary.nil?
				@dictionary = Hash.new()
			else
				# do nothing
			end

			# certify if the key doesn't exist
			if !@dictionary.has_key?(newUnit)
				@dictionary[newUnit] = newRate

				# verify if the key has been added
				if @dictionary.has_key?(newUnit)
					puts "key #{newUnit} added"

					# return @dictionary
					return true
				else
					# throw exception
					return false
				end

			else
				puts "key #{newUnit} already exists"
				return false
			end

		end
	end
end
