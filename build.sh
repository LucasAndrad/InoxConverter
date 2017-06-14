#!/bin/bash

# Script to build gem 
# Version 0.1.0

gem build inox_converter.gemspec
gem install ./inox_converter-0.1.0.gem
irb -r 'inox_converter'
