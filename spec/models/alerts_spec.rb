# frozen_string_literal: true

require 'rspec'

RSpec.describe Warframe::Models::Alerts do
  let(:json) { load_json_file 'alert' }
  let(:alert) { Warframe::Models::Alerts.new json }

  it 'can be instantiated from JSON' do
    expect { alert }.to_not raise_error
  end

  it 'can be instantiated from JSON Array' do
    json_arr = Array.new(6, json)
    expect { Warframe::Models::Alerts.new json_arr }.to_not raise_error
  end

  it 'can read the newly created objects attributes' do
    expect(alert.active?).to eq true
    expect(alert.mission.node).to eq 'Helene (Saturn)'
  end
end
