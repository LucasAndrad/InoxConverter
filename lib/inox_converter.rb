require "inox_converter/version"
require "inox_converter/converter"
require "inox_converter/length"


module InoxConverter
	
	def self.convertCurrency(valueToConvert, firstUnit, secondUnit)
		puts "Currency"
	end

	def self.convertLenght(valueToConvert, firstUnit, secondUnit)
		puts "Lenght convertion"
		lengthConverter = Length.new()
		lengthConverter.getInDictionary(valueToConvert)
	end

	def self.convertVolume(valueToConvert, firstUnit, secondUnit)
		puts "Volume"
	end

	def self.convertArea(valueToConvert, firstUnit, secondUnit)
		puts "Area"
	end

	def self.convertMass(valueToConvert, firstUnit, secondUnit)
		puts "Mass"
	end

	def self.convertTime(valueToConvert, firstUnit, secondUnit)
		puts "Time"
	end
  
end
