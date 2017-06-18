require 'spec_helper'

RSpec.describe InoxConverter do
  example do
    expect(described_class).to equal(InoxConverter)
  end
end

RSpec.describe InoxConverter do
  describe "instantiation" do
    it "should run convertCurrency" do
      @inox_converter = InoxConverter.convertCurrency(10,'firstUnit', 'secondUnit')
      expect('Currency')
    end

    it "should run convertLenght with rational numbers" do
      @inox_converter = InoxConverter.convertLenght(1000.50, 'metre', 'kilometre')
      expect(1.0005)
      @inox_converter = InoxConverter.convertLenght(1.0005, 'kilometre', 'metre')
      expect(1000.50)
    end

  end
end
