# InoxConverter

![Coverage](https://img.shields.io/badge/coverage-97.67%25-brightgreen.svg)

![Gem Version](https://img.shields.io/badge/gem%20version-1.0.0-brightgreen.svg)

[![Build Status](https://travis-ci.org/vinisilvacar/InoxConverter.svg?branch=master)](https://travis-ci.org/vinisilvacar/InoxConverter)

Hi! Welcome to Inox Converter official page!
Our gem is created to work like a 'swiss army knife' for Ruby developers, bringing a easy and reliable way to convert some formats and units that commonly appear during the developing process.
You can: convert area, currency(real time), length, mass, volume and format time and date.
You want to use one unit that doesn't exist in our gem? You can add that unit too!
And more... As a framework you can extend our gem and create your own convertions type.

## Installation

Add this line to your application's Gemfile:

```ruby
  gem 'inox_converter'
```

And then execute:

```script
  bundle install
```

Or install it yourself as:

```script
  gem install inox_converter
```

## Usage

To make a conversion:

- valueToConvert: the value you want to convert
- firstUnit: actual unit -> string
- secondUnit: the unit you want to convert to -> string 

#### Exemplos

```ruby
InoxConverter.convertCurrency(valueToConvert, firstUnit, secondUnit)
InoxConverter.convertLenght(valueToConvert, firstUnit, secondUnit)
InoxConverter.convertVolume(valueToConvert, firstUnit, secondUnit)
InoxConverter.convertArea(valueToConvert, firstUnit, secondUnit)
InoxConverter.convertMass(valueToConvert, firstUnit, secondUnit)
InoxConverter.convertTime(valueToConvert, firstUnit, secondUnit)
InoxConverter.convertTimeFormat(timeToFormat, desiredFormat)
InoxConverter.convertDateFormat(dateToFormat, desiredFormat)
```

```ruby
InoxConverter.convertCurrency(10, "USD", "BRL")
InoxConverter.convertLenght(10, 'meter', 'kilometer')
InoxConverter.convertDateFormat(Date.today, "DMY")
```


To add a unit:

<i>
- newUnit: name of the new unit to be added -> string
- newRate: reason between new unit and base unit
</i>

```ruby
InoxConverter.addLenghtUnit(newUnit, newRate)
InoxConverter.addVolumeUnit(newUnit, newRate)
InoxConverter.addAreaUnit(newUnit, newRate)
InoxConverter.addMassUnit(newUnit, newRate)
InoxConverter.addTimeUnit(newUnit, newRate)
InoxConverter.addDateFormat(newFormat, newRate)
InoxConverter.addTimeFormat(newFormat, newRate)
```

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

## Usage
You can see all types and units to convert in this link:
[List of Units](https://github.com/vinisilvacar/InoxConverter/wiki/Tipos-de-Convers%C3%A3o)

We also have a full user manual in portuguese:  [Manual de Usuário](https://github.com/vinisilvacar/InoxConverter/wiki/Manual-de-Usu%C3%A1rio)

Manual in Englise: coming soon.

## Contributing
First you must choose an issue or request for us to create a new one

Then clone or fork our Repository

Time to Code!

Run

```script
bundle install
bash build.sh
```

That's it inox_converter is install in your machine and ready use.

Do your contribution.
<p style="color: red;">Don't forget to make your test's! </P> 
<p> We use Rspec </P>
Run your tests with:

```script
rspec
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

