require 'date'
module InoxConverter
  class DateFormat < Converter


    # use values from https://en.wikipedia.org/wiki/Date_format_by_country
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