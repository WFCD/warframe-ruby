# frozen_string_literal: true

RSpec.describe Warframe::Models::VallisCycle do
  let(:json) { load_json_file 'vallis_cycle' }

  it 'can be instantiated from JSON' do
    expect { Warframe::Models::VallisCycle.new(json) }.to_not raise_error
  end

  let(:cycle) { Warframe::Models::VallisCycle.new(json) }

  it 'can read VallisCycle data' do
    expect(cycle.state).to eq 'cold'
    expect(cycle.is_warm?).to eq false
  end
end
