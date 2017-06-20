require 'spec_helper'
require 'inox_converter/api/api'


RSpec.describe Api::Api, type: :class do

	describe "Testing consuming api" do 
		before do
			@dados = RestClient::Request.execute(method: :get, url: 'https://finance.yahoo.com/webservice/v1/symbols/allcurrencies/quote')
			hash_local = Hash.new
			@hash_local = Hash.from_xml(@dados)
		end

		it 	"testing method consume api" do
			api = Api::Api.new
			@hash = api.consume_api
			expect(Hash.new)
		end

		it "method tread data in api for created dicionary data fo currency dados" do 
			api = Api::Api.new
			@hash = api.treat_data
			expect(@hash_local)
		end
	end

	describe "testing validates in api" do
		before do
			@dados = RestClient::Request.execute(method: :get, url: 'https://finance.yahoo.com/webservice/v1/symbols/allcurrencies/quote')
			hash_local = Hash.new
			@hash_local = Hash.from_xml(@dados)

		end
		  
		it "should run validate metod api return" do
			api = Api::Api.new
			validate =  api.validate_api_return
			expect(true)   
		end

		it "should run validate return_hash_currency" do
			valor_2 = "BRL"
			api = Api::Api.new
			@hash_local = api.consume_api
			@hash = api.treat_data
			validate =  api.return_hash_currency(valor_2)
			expect(true)   
		end

		it "should run validate return_hash_currency in false return" do
			valor_1 = "GSFD"
			api = Api::Api.new
			@hash_local = api.consume_api
			@hash = api.treat_data
			validate =  api.return_hash_currency(valor_1)
			expect(false)   
		end

		it "should run validate in data_validate_api for true" do
			api = Api::Api.new
			@hash_local = api.consume_api
			@hash = api.treat_data
			validate = api.data_validate_api("BRL", "EUR")
			expect(true)
		end

		it "should run validate in data_validate_api for false" do
			api = Api::Api.new
			@hash_local = api.consume_api
			@hash = api.treat_data
			validate = api.data_validate_api("BRL", "GDSF")
			expect(false)
		end
		
	end
end