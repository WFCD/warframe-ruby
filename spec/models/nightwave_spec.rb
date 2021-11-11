# frozen_string_literal: true

require 'rspec'

RSpec.describe Warframe::Models::Nightwave do
  let(:json) { load_json_file 'nightwave' }

  it 'can be instantiated from JSON' do
    expect { Warframe::Models::Nightwave.new json }.to_not raise_error
  end

  let(:model) { Warframe::Models::Nightwave.new json }

  it 'can access instance variables' do
    expect(model.id).to_not be nil
  end

  it 'can access nested attributes' do
    expect(model.possible_challenges).to be_a Array
  end

  it 'maintains Hash structure of nested attributes' do
    expect(model.possible_challenges[0].id).to_not be nil
  end
end
