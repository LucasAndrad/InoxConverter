# InoxConverter

Hi! Welcome to Inox Converter official page!
Our gem is created to work like a 'swiss army knife' for Ruby developers, bringing a easy and reliable way to convert some formats and units that commonly appear during the developing process.
You can: convert area, currency, length, mass, volume and format time and date.
You want to use one unit that doesn't exist in our gem? You can add that unit too!
And more... As a framework you can extend our gem and create your own convertions type.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'inox_converter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inox_converter

## Usage

To make a conversion:

<i>
- valueToConvert: the value you want to convert
- firstUnit: actual unit -> string
- secondUnit: the unit you want to convert to -> string 
</i>

- InoxConverter.convertCurrency(valueToConvert, firstUnit, secondUnit)
- InoxConverter.convertLenght(valueToConvert, firstUnit, secondUnit)
- InoxConverter.convertVolume(valueToConvert, firstUnit, secondUnit)
- InoxConverter.convertArea(valueToConvert, firstUnit, secondUnit)
- InoxConverter.convertMass(valueToConvert, firstUnit, secondUnit)
- InoxConverter.convertTime(valueToConvert, firstUnit, secondUnit)

Example:
```ruby
InoxConverter.convertLenght(10, 'meter', 'kilometer')
```

To add a unit:

<i>
- newUnit: name of the new unit to be added -> string
- newRate: reason between new unit and base unit
</i>

- InoxConverter.addLenghtUnit(newUnit, newRate)
- InoxConverter.addVolumeUnit(newUnit, newRate)
- InoxConverter.addAreaUnit(newUnit, newRate)
- InoxConverter.addMassUnit(newUnit, newRate)
- InoxConverter.addTimeUnit(newUnit, newRate)
- InoxConverter.addDateFormat(newFormat, newRate)
- InoxConverter.addTimeFormat(newFormat, newRate)

If you want to add a lenght unit called MyUnit that is ten times greater than the base unit of lenght (meter), you should to this:
```ruby
InoxConverter.addLenghtUnit('MyUnit', 10)
```


### Base units:

- Area: squared meter
- Currency: dollar
- Length: meter
- Mass: gram
- Time: second
- Volume: liter

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/inox_converter.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

