require 'time'
module InoxConverter
  class TimeFormat < Converter

    def initDictionary
      @dictionary = Hash.new
      @dictionary = {
        "24hm" => "%R",
        "12hm" => "%I:%M %p",
        "24hms" => "%X",
        "12hms" => "%I:%M:%S %p"
      }
    end

    def formatTime(value, unit)
      time = getInDictionary(unit)
      newTime = value.strftime(time)
      return newTime     
    end

  end
end