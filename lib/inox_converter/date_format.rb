require 'date'
module InoxConverter
  class DateFormat < Converter

    def initDictionary
      @dictionary = Hash.new
      @dictionary = {
        "DMY" => "%d/%m/%Y",
        "YMD" => "%Y/%m/%d",
        "MDY" => "%m/%d/%Y"
      }
    end

    def formatDate(value, unit)
      date = getInDictionary(unit)
      newDate = value.strftime(date)
      return newDate      
    end

  end
end