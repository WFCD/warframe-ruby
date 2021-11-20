# warframe-ruby
[![Ruby Gem Version](https://badgen.net/rubygems/v/warframe)](https://rubygems.org/gems/warframe)
[![Downloads](https://badgen.net/rubygems/dt/warframe)](https://rubygems.org/gems/warframe)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)
[![Platform](https://badgen.net/rubygems/p/warframe)](https://www.ruby-lang.org/en/)

A Ruby client for [Warframe Stat](https://warframestat.us) bringing you live modeled data from their API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'warframe'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install warframe

## Usage

To get started accessing live data, you must instantiate a new `Warframe::REST::Client`
```ruby
require 'warframe'

client = Warframe::REST::Client.new # => <Warframe::REST::Client platform='pc' language='en'>

# You can supply a hash to set your preferred platform or language.
my_custom_options = { platform: 'ps4', language: 'de' }
german_ps4 = Warframe::REST:Client.new my_custom_options # => <Warframe::REST::Client platform='ps4' language='de'>
```

This gives us access to a plethora of methods, check out the [documentation](https://rubydoc.info/gems/warframe) for more info.
```ruby

client = Warframe::REST::Client.new
client.nightwave # => <Warframe::Models::Nightwave>
client.alerts # => [ <Warframe::Models::Alert>, <Warframe::Models::Alert> ]
```

## Documentation

Documentation is currently provided by [rubydoc.info](https://rubydoc.info), check out the current versions documentation at https://rubydoc.info/gems/warframe.

## Development

### Dependency Management
After checking out the repo, run `bundle install` to install required dependencies. 

### Testing
To check if your changes are passing tests, run:

    $ thor test:rspec

> Testing framework provided by [RSpec](https://rspec.info/).

### Linting
To auto-correct styling offenses, run: 

    $ thor style:fix

> All linting is provided by [RuboCop](https://github.com/rubocop/rubocop).

### Generating New Routes / Models with Thor
Using Thor allows us to create new routes and models via the command line, making it very simple to add new elements.

For example if we wanted to add, [conclaveChallenges](https://docs.warframestat.us/#tag/Worldstate/paths/~1{platform}~1conclaveChallenges/get) we run:

    $ thor generate conclaveChallenges 
    
    >       create  lib/warframe/models/conclave_challenge.rb
    >       create  lib/warframe/rest/api/conclave_challenges.rb
    >       conflict  lib/warframe/rest/api.rb
    > Overwrite C:/Users/ajrom/RubymineProjects/warframe/lib/warframe/rest/api.rb? (enter "h" for help) [Ynaqdh] 
    
    $ Y
    
    >       force  lib/warframe/rest/api.rb

This creates a blank [model](/lib/warframe/models) for the data and a [route](/lib/warframe/rest/api) with a name spaced method for it, and then adds this method to our [REST::API](/lib/warframe/rest/api). Add attributes to the corresponding model and then run:

    $ rake test
    
To ensure the new model is able to be created and accessed correctly, feel free to create more tests in the [spec directory](/spec/models).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aj-rom/warframe-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/aj-rom/warframe-ruby/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
