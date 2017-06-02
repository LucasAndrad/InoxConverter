require "inox_converter/version"
require "inox_converter/converter"


module InoxConverter

	def self.hi
		puts "hello from inoxconverter"
		converter = Converter.new()
		converter.hello
	end
	
	def self.convertCurrency(value, unit1, unit2)
		puts "Currency"
	end

	def self.convertLenght(value, unit1, unit2)
		puts "Currency"
	end

	def self.convertVolume(value, unit1, unit2)
		puts "Volume"
	end

	def self.convertArea(value, unit1, unit2)
		puts "Area"
	end

	def self.convertMass(value, unit1, unit2)
		puts "Mass"
	end

	def self.convertTime(value, unit1, unit2)
		puts "Time"
	end
  
end
