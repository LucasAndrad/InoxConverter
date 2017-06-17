module InoxConverter
  class Time < Converter

    # base unit: seconds
    def initDictionary
      @dictionary = Hash.new
      @dictionary = {
        "second" => 1,
        "s" => 1,
        "minute" => 60,
        "min" => 60,
        "hour" => 60*60,
        "h" => 60*60,
        "day" => 60*60*24,
        "week" => 60*60*24*7,
        "year" => 60*60*24*365,
        "leap year" => 60*60*24*366
      }
    end

  end
end
