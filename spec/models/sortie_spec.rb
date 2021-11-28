# frozen_string_literal: true

RSpec.describe Warframe::Models::Sortie do
  let(:json) { load_json_file 'sortie' }

  it 'can be instantiated from JSON' do
    expect { Warframe::Models::Sortie.new(json) }.to_not raise_error
  end

  let(:sortie) { Warframe::Models::Sortie.new(json) }

  it 'can read Sortie data' do
    expect(sortie.active?).to eq true
    expect(sortie.reward_pool).to eq 'Sortie Rewards'
  end
end
