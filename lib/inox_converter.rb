require "inox_converter/version"
require "inox_converter/converter"
require "inox_converter/area"
require "inox_converter/length"
require "inox_converter/mass"
require "inox_converter/volume"
require "inox_converter/time"
require "inox_converter/currency"
require "inox_converter/currency_adapter"

module InoxConverter

	def self.convertCurrency(valueToConvert, firstUnit, secondUnit)
		puts "Currency Conversion convertion"
		currencyConverter = InoxConverter::CurrencyAdapter.new()
		currencyConverter.convert(valueToConvert, firstUnit, secondUnit)
	end

	# firstUnit = actual unit
	# secondUnit = final unit
	# returns the value converted
	def self.convertLenght(valueToConvert, firstUnit, secondUnit)
		puts "Lenght convertion"
		self.newLenghtInstance
		@lengthConverter.convert(valueToConvert, firstUnit, secondUnit)
	end

	def self.convertVolume(valueToConvert, firstUnit, secondUnit)
		puts "Volume convertion"
		self.newVolumeInstance
		@volumeConverter.convert(valueToConvert, firstUnit, secondUnit)
	end

	def self.convertArea(valueToConvert, firstUnit, secondUnit)
		puts "Area convertion"
		self.newAreaInstance
		@areaConverter.convert(valueToConvert, firstUnit, secondUnit)
	end

	def self.convertMass(valueToConvert, firstUnit, secondUnit)
		puts "Mass convertion"
		self.newMassInstance
		@massConverter.convert(valueToConvert, firstUnit, secondUnit)
	end

	def self.convertTime(valueToConvert, firstUnit, secondUnit)
		puts "Time convertion"
		self.newTimeInstance
		@timeConverter.convert(valueToConvert, firstUnit, secondUnit)
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

	def self.addTimeUnit(newUnit, newRate)
		self.newTimeInstance
		@timeConverter.addUnit(newUnit, newRate)
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

	def self.newTimeInstance()
		if @timeConverter.nil?
			@timeConverter = Time.new()
		else
			# do nothing
		end
	end

end
