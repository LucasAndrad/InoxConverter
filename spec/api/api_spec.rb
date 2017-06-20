require 'inox_converter/api/api'

RSpec.describe Api::Api, type: :class do

	describe "Testing consuming api" do 
		before do
			@dados = RestClient::Request.execute(method: :get, url: 'https://finance.yahoo.com/webservice/v1/symbols/allcurrencies/quote')
		end

		it 	"testing method consume api" do
			api = Api::Api.new
			@hash = api.consume_api
			expect(Hash.new)
		end
	end

	describe "testing validates in api" do
		before do
			@dados = RestClient::Request.execute(method: :get, url: 'https://finance.yahoo.com/webservice/v1/symbols/allcurrencies/quote')
		end    
		it "should run validate metod api return" do
			api = Api::Api.new
			validate =  api.validate_api_return
			expect(true)   
		end
	end
end