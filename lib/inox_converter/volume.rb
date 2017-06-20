module InoxConverter
  class Volume < Converter

    # base unit: liter
    def initDictionary
      @dictionary = Hash.new
      @dictionary = {
        "cubic_metre" => 1000,
        "cubic_meter" => 1000,
        "m3" => 1000,
        "decaliter" => 10,
        "dal" => 10,
        "litre" => 1,
        "liter" => 1,
        "l" => 1,
        "deciliter" => 0.1,
        "decilitre" => 0.1,
        "dl" => 0.1,
        "centilitre" => 0.01,
        "centiliter" => 0.01,
        "cl" => 0.01,
        "mililitre" => 0.001,
        "mililiter" => 0.001,
        "ml" => 0.001,
        "glass" => 0.240,
        "teaspoon" => 0.00492892,
        "tablespoon" => 0.0147868,
        "cubicfoot" => 28.3168,
        "ft3" => 28.3168
      }
    end

  end
end
