# frozen_string_literal: true

require 'json'
require 'rspec'
require 'warframe'

module SpecUtils
  def load_json_file(file_name)
    JSON.load_file("#{Dir.pwd}/spec/fixtures/#{file_name}.json")
  end
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include SpecUtils
end

RSpec::Matchers.define :be_a_boolean do
  match do |real|
    expect(real).to be(true).or be(false)
  end
end
