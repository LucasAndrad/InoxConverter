require "rest-client"
require "active_support/core_ext/hash"
module Api
	class Api

		@dados = ''
		@data = true

		#Consuming yahoo finances api and transform in hash for ruby
		def consume_api
			@dados = RestClient::Request.execute(method: :get, url: 'https://finance.yahoo.com/webservice/v1/symbols/allcurrencies/quote')
			hash_local = Hash.new
			@hash_local = Hash.from_xml(@dados)
		end

		#Treating data in hash
		def treat_data
			@hash_inter = Hash.new
			@hash = Hash.new
			if validate_api_return
				@hash_inter = @hash_local['list']['resources']['resource']
				@hash_inter.each do |cout|
					simbol_string = cout['field'][0].to_s
					simbol = simbol_string.split("/")
				 	@hash[simbol[1]] = cout['field'][1].to_f
		 		end
		 	else
 				@data = false
 			end	
		end

		#verifield return of consumir api
		def validate_api_return
			if @dados.nil?
				return false
			else
				return true
			end
		end

		#verifield value in @hash for calcule currency convert
		def return_hash_currency(valor)
			if @hash[valor].nil?
				return false
			else
				return true
			end		
		end

		def data_validate_api(firstUnit, secondUnit)
			if @data == false || return_hash_currency(firstUnit) == false || return_hash_currency(secondUnit) == false
			return false
			else
				return true
			end 
		end

		def validate_first_unit(firstUnit)
			if @data == false || return_hash_currency(firstUnit) == false
				return false
			else
				return true
			end
		end

		def validate_second_unit(secondUnit) 
			if secondUnit == "USD"
		 		return true;
		 	else
		 		return false
		 	end
		end

		#Template of execution sequence of the methods and return @hash
		def dictionary_api
			consume_api
			treat_data
			
			
		end

		
		#new metodo for convert currency
		def convert_currency(valueToConvert, firstUnit, secondUnit)
			dictionary_api
			if validate_second_unit(secondUnit) == true
				if validate_first_unit(firstUnit) == true
					finalValue = valueToConvert / @hash[firstUnit]
				else
					return 0
				end
			else
				if data_validate_api(firstUnit, secondUnit)
					finalValue = (valueToConvert / @hash[firstUnit]) * @hash[secondUnit]
					return finalValue
				else	 
					return 0
				end
			end
		end 
	end
end