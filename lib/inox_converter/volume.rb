module InoxConverter
  class Volume < Converter

    def initDictionary
      @dictionary = Hash.new
      @dictionary = {
        "cubicmetre" => 1000,
        "deciliter" => 10,
        "decilitre" => 10,
        "litre" => 1,
        "liter" => 1,
        "decaliter" => 0.1,
        "decalitre" => 0.1,
        "centilitre" => 0.01,
        "centiliter" => 0.01,
        "mililitre" => 0.001,
        "mililiter" => 0.001,
        "glass" => 0.240,
        "teaspoon" => 0.00492892,
        "tablespoon" => 0.0147868,
        "cubicfoot" => 28.3168
      }
    end
    
  end
end