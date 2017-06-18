require 'spec_helper'

RSpec.describe InoxConverter do
  example do
    expect(described_class).to equal(InoxConverter)
  end

  describe "convertCurrency" do
    it "should run convertCurrency" do
      @inox_converter = InoxConverter.convertCurrency(10,'firstUnit', 'secondUnit')
      expect('Currency')
    end
  end

  describe "convertLenght" do
    it "should run convertLenght with int numbers" do
      @inox_converter = InoxConverter.convertLenght(1000, 'metre', 'kilometre')
      expect(1)
      @inox_converter = InoxConverter.convertLenght(1, 'kilometre', 'metre')
      expect(1000)
    end

    it "should run convertLenght with rational numbers" do
      @inox_converter = InoxConverter.convertLenght(1000.50, 'metre', 'kilometre')
      expect(1.0005)
      @inox_converter = InoxConverter.convertLenght(1.0005, 'kilometre', 'metre')
      expect(1000.50)
    end
  end

  describe "convertVolume" do
    it "should run convertVolume with int numbers" do
      @inox_converter = InoxConverter.convertVolume(1000, 'mililitre', 'litre')
      expect(1)
      @inox_converter = InoxConverter.convertVolume(1, 'litre', 'mililitre')
      expect(1000)
    end

    it "should run convertVolume with rational numbers" do
      @inox_converter = InoxConverter.convertVolume(1000.50, 'mililitre', 'litre')
      expect(1.0005)
      @inox_converter = InoxConverter.convertVolume(1.0005, 'litre', 'mililitre')
      expect(1000.50)
    end
  end

  describe "convertArea" do
    it "should run convertArea with int numbers" do
      @inox_converter = InoxConverter.convertArea(1000, 'square metre', 'square kilometre')
      expect(0.001)
      @inox_converter = InoxConverter.convertArea(0.001, 'square kilometre', 'square metre')
      expect(1000)
    end

    it "should run convertArea with rational numbers" do
      @inox_converter = InoxConverter.convertArea(1000.50, 'square metre', 'square kilometre')
      expect(0.001)
      @inox_converter = InoxConverter.convertArea(0.001, 'square kilometre', 'square metre')
      expect(1000)
    end
  end

  describe "convertMass" do
    it "should run convertMass with int numbers" do
      @inox_converter = InoxConverter.convertMass(1000, 'gram', 'kilogram')
      expect(1)
      @inox_converter = InoxConverter.convertMass(1, 'kilogram', 'gram')
      expect(1000)
    end

    it "should run convertMass with rational numbers" do
      @inox_converter = InoxConverter.convertMass(1000.50, 'gram', 'kilogram')
      expect(0.001)
      @inox_converter = InoxConverter.convertMass(0.001, 'kilogram', 'gram')
      expect(1000)
    end
  end

  describe "convertTime" do
    it "should run convertTime with int numbers" do
      @inox_converter = InoxConverter.convertTime(60, 'second', 'minute')
      expect(1)
      @inox_converter = InoxConverter.convertTime(1, 'minute', 'second')
      expect(60)
    end

    it "should run convertTime with rational numbers" do
      @inox_converter = InoxConverter.convertTime(60.5, 'second', 'minute')
      expect(1.01)
      @inox_converter = InoxConverter.convertTime(1.01, 'minute', 'second')
      expect(60.5)
    end
  end

end
