# frozen_string_literal: true

require 'rspec'

RSpec.describe Warframe::Models::Alert do
  let(:json) { load_json_file 'cambion_drift' }
  let(:drift) { Warframe::Models::CambionDrift.new json }

  it 'can be instantiated from JSON' do
    expect { drift }.to_not raise_error
  end

  it 'can be instantiated from JSON Array' do
    json_arr = Array.new(6, json)
    expect { Warframe::Models::CambionDrift.new json_arr }.to_not raise_error
  end

  it 'can read the newly created objects attributes' do
    expect(drift.active).to be_a String
  end
end
