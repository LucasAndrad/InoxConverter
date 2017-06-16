require "inox_converter/version"
require "inox_converter/converter"
require "inox_converter/area"
require "inox_converter/length"
require "inox_converter/mass"
require "inox_converter/volume"

module InoxConverter
	@length = Length.new()

	# Method just to test AddUnit, will be deleted in future 
	def self.testAddUnit
		# success case
		@length.addUnit("my unit", 10)

		# fail case
		#length.addUnit("milimetre", 10)
		
	end

	def self.convertCurrency(valueToConvert, firstUnit, secondUnit)
		puts "Currency"
	end

	# firstUnit = actual unit
	# secondUnit = final unit
	# returns the value converted
	def self.convertLenght(valueToConvert, firstUnit, secondUnit)
		puts "Lenght convertion"
		# lengthConverter = Length.new()
		# lengthConverter.convert(valueToConvert, firstUnit, secondUnit)
		@length.convert(valueToConvert, firstUnit, secondUnit)
	end

	def self.convertVolume(valueToConvert, firstUnit, secondUnit)
		puts "Volume convertion"
		volumeConverter = Volume.new()
		volumeConverter.convert(valueToConvert, firstUnit, secondUnit)
	end

	def self.convertArea(valueToConvert, firstUnit, secondUnit)
		puts "Area convertion"
		areaConverter = Area.new()
		areaConverter.convert(valueToConvert, firstUnit, secondUnit)
	end

	def self.convertMass(valueToConvert, firstUnit, secondUnit)
		puts "Mass convertion"
		massConverter = Mass.new()
		massConverter.convert(valueToConvert, firstUnit, secondUnit)
	end

	def self.convertTime(valueToConvert, firstUnit, secondUnit)
		puts "Time convertion: uninplemented"
	end
  
end
