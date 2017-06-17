require 'inox_converter/api/api'

module InoxConverter
	class CurrencyAdapter < Currency
		
		# subscrible of metod convert in adapter
      	def convert(valueToConvert, firstUnit, secondUnit)
      		@api = Api::Api.new
    		@api.convert_currency(valueToConvert, firstUnit, secondUnit)
		end

	end
end