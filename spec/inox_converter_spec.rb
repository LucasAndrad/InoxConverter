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
  end
end
