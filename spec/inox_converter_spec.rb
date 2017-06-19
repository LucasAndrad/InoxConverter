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

  describe "Date and Time formats" do
    it "should format date to DMY" do
      date = Date.today
      @inox_converter = InoxConverter.convertDateFormat(date, "DMY")
      expect(@inox_converter).to eq(Date.today.strftime("%d/%m/%Y"))
    end

    it "should format time to hour mimnute seconde 24h" do
      time = Time.now
      @inox_converter = InoxConverter.convertTimeFormat(time, "24hms")
      expect(@inox_converter).to eq(Time.now.strftime("%X"))
    end
  end

  describe "addLenghtUnit" do
    it "should add a lenght unit" do
      @inox_converter = InoxConverter.addLenghtUnit('my unit', 10)
      expect('key my unit added')
      @inox_converter = InoxConverter.addLenghtUnit('my unit', 10)
      expect('key my unit already exists')
    end
  end

  describe "addVolumeUnit" do
    it "should add a volume unit" do
      @inox_converter = InoxConverter.addVolumeUnit('my unit', 10)
      expect('key my unit added')
      @inox_converter = InoxConverter.addVolumeUnit('my unit', 10)
      expect('key my unit already exists')
    end
  end

  describe "addAreaUnit" do
    it "should add a area unit" do
      @inox_converter = InoxConverter.addAreaUnit('my unit', 10)
      expect('key my unit added')
      @inox_converter = InoxConverter.addAreaUnit('my unit', 10)
      expect('key my unit already exists')
    end
  end

  describe "addMassUnit" do
    it "should add a mass unit" do
      @inox_converter = InoxConverter.addMassUnit('my unit', 10)
      expect('key my unit added')
      @inox_converter = InoxConverter.addMassUnit('my unit', 10)
      expect('key my unit already exists')
    end
  end

  describe "addTimeUnit" do
    it "should add a time unit" do
      @inox_converter = InoxConverter.addTimeUnit('my unit', 10)
      expect('key my unit added')
      @inox_converter = InoxConverter.addTimeUnit('my unit', 10)
      expect('key my unit already exists')
    end
  end

end
