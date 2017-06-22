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
			@api = Api::Api.new
			@hash_local = @api.consume_api
			@hash = @api.treat_data

		end
		  
		it "should run validate metod api return" do
			validate =  @api.validate_api_return
			expect(true)   
		end

		it "should run validate return_hash_currency" do
			valor_2 = "BRL"
			validate =  @api.return_hash_currency(valor_2)
			expect(true)   
		end

		it "should run validate return_hash_currency in false return" do
			valor_1 = "GSFD"
			validate =  @api.return_hash_currency(valor_1)
			expect(false)   
		end

		it "should run validate in data_validate_api for true" do
			validate = @api.data_validate_api("BRL", "EUR")
			expect(true)
		end

		it "should run validate in data_validate_api for false" do
			validate = @api.data_validate_api("BRL", "GDSF")
			expect(false)
		end

		 it "should run validate in validate_currency_unit for true" do
			validate = @api.validate_currency_unit("BRL")
			expect(true)
		end

		it "should run validate in validate_first_unit for false" do
			validate = @api.validate_currency_unit("USD")
			expect(false)
		end

		it "should run validate in validate_second_unit for USD true" do
			validate = @api.validate_usd_unit("USD")
			expect(true)
		end

		it "should run validate in validate_second_unit for USD false" do
			validate = @api.validate_usd_unit("BRL")
			expect(false)
		end
		
	end
	describe "Testing convert_currency in api" do 
		before do
			@api = Api::Api.new
		end
		
		it "should run convert_currency for second unit is USD and firs unit that in hash" do
			valor = @api.convert_currency(20, "EUR", "USD")
			expect(valor).to be_instance_of(Float)
			expect(valor).to be >  20
		end

		it "should run convert_currency for second unit is USD and firs unit It is not on hash" do
			valor = @api.convert_currency(20, "GDSF", "USD")
			expect(valor).to eq(0)
		end

		it "should run convert_currency for second unit is not USD and two unit that in hash" do
			valor = @api.convert_currency(20, "EUR", "BRL")
			expect(valor).to be_instance_of(Float)
			expect(valor).to be >  20
		end
		 it "should run convert currency for USD first unit" do
		 	valor = @api.convert_currency(20, "USD", "EUR")
			expect(valor).to be_instance_of(Float)
			expect(valor).to be <  20
		 end
		 it "should run convert_currency for USD and USD" do
		 	valor = @api.convert_currency(20, "USD", "USD")
			expect(valor).to be(20)
		 end
		  it "should run convert_currency for USD and currency not in dicionary hash" do
		 	valor = @api.convert_currency(20, "USD", "GSF")
			expect(valor).to be(0)
		 end
	end
end