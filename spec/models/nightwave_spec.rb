# frozen_string_literal: true

require 'rspec'

RSpec.describe Warframe::Models::Nightwave do
  json = { id: 'String' }
  it 'Can be instantiated from JSON' do
    expect { Warframe::Models::Nightwave.new json }.to_not raise_error
  end

  it 'Can access instance variables' do
    expect(Warframe::Models::Nightwave.new(json).id).to_not be nil
  end
end
