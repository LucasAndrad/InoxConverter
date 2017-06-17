require "inox_converter/version"
require "inox_converter/converter"
require "inox_converter/area"
require "inox_converter/length"
require "inox_converter/mass"
require "inox_converter/volume"

module InoxConverter

	# Method just to test AddUnit, will be deleted in future 
	def self.testAddUnit
		# success case
		self.newLenghtInstance
		@lengthConverter.addUnit("my unit", 10)

		# fail case
		#lengthConverter.addUnit("milimetre", 10)
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
		self.newLenghtInstance
		@lengthConverter.convert(valueToConvert, firstUnit, secondUnit)
	end

	def self.convertVolume(valueToConvert, firstUnit, secondUnit)
		puts "Volume convertion"
		#volumeConverter = Volume.new()
		@volumeConverter.convert(valueToConvert, firstUnit, secondUnit)
	end

	def self.convertArea(valueToConvert, firstUnit, secondUnit)
		puts "Area convertion"
		#areaConverter = Area.new()
		@areaConverter.convert(valueToConvert, firstUnit, secondUnit)
	end

	def self.convertMass(valueToConvert, firstUnit, secondUnit)
		puts "Mass convertion"
		#massConverter = Mass.new()
		@massConverter.convert(valueToConvert, firstUnit, secondUnit)
	end

	def self.convertTime(valueToConvert, firstUnit, secondUnit)
		puts "Time convertion: uninplemented"
	end

	def self.addLenghtUnit(newUnit, newRate)
		self.newLenghtInstance
		@lengthConverter.addUnit(newUnit, newRate)
	end

	def self.addVolumeUnit(newUnit, newRate)
		self.newVolumeInstance
		@volumeConverter.addUnit(newUnit, newRate)
	end

	def self.addAreaUnit(newUnit, newRate)
		self.newAreaInstance
		@areaConverter.addUnit(newUnit, newRate)
	end

	def self.addMassUnit(newUnit, newRate)
		self.newMassInstance
		@massConverter.addUnit(newUnit, newRate)
	end


	def self.newLenghtInstance()
		if @lengthConverter.nil?
			@lengthConverter = Length.new()
		else
			# do nothing
		end
	end

	def self.newVolumeInstance()
		if @volumeConverter.nil?
			@volumeConverter = Volume.new()
		else
			# do nothing
		end
	end

	def self.newAreaInstance()
		if @areaConverter.nil?
			@areaConverter = Area.new()
		else
			# do nothing
		end
	end

	def self.newMassInstance()
		if @massConverter.nil?
			@massConverter = Mass.new()
		else
			# do nothing
		end
	end
  
end
