# frozen_string_literal: true

RSpec.describe Warframe::Models::SteelPath do
  let(:json) { load_json_file 'steel_path' }

  it 'can be instantiated from JSON' do
    expect { Warframe::Models::SteelPath.new(json) }.to_not raise_error
  end

  let(:steel_path) { Warframe::Models::SteelPath.new(json) }

  it 'can read Steel Path data' do
    expect(steel_path.current_reward.name).to eq '30,000 Endo'
  end
end
