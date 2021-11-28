# frozen_string_literal: true

RSpec.describe Warframe::Models::Alert do
  let(:json) { load_json_file 'cambion_drift' }
  let(:drift) { Warframe::Models::CambionDrift.new json }

  it 'can be instantiated from JSON' do
    expect { drift }.to_not raise_error
  end

  it 'can read the newly created objects attributes' do
    expect(drift.active).to be_a String
  end
end
