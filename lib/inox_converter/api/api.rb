require "rest-client"
require "active_support/core_ext/hash"
module Api
	class Api

		dados = ''

		#Consuming yahoo finances api and transform in hash for ruby
		def consumirApi
			@dados = RestClient::Request.execute(method: :get, url: 'https://finance.yahoo.com/webservice/v1/symbols/allcurrencies/quote')
			hash_local = Hash.new
			@hash_local = Hash.from_xml(@dados)
		end

		#Treating data in hash
		def tratarDados()
			@hash_inter = Hash.new
			@hash = Hash.new
			@hash_inter = @hash_local['list']['resources']['resource']
			@hash_inter.each do |cout|
			 	@hash[cout['field'][0].to_s] = cout['field'][1].to_f
	 		end	
		end

		#Template of execution sequence of the methods and return @hash
		def dictionary_api
			consumirApi
			tratarDados
			return @hash
		end

		#new metodo for convert currency
		def convert_currency(valueToConvert, firstUnit, secondUnit)
			dictionary_api
			finalValue = (valueToConvert / @hash[firstUnit]) * @hash[secondUnit]
			return finalValue
		end 
	end
end