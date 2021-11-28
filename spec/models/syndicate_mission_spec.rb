# frozen_string_literal: true

RSpec.describe Warframe::Models::SyndicateMission do
  let(:json) { load_json_file 'syndicate_mission' }

  it 'can be instantiated from JSON' do
    expect { Warframe::Models::SyndicateMission.new(json) }.to_not raise_error
  end

  let(:mission) { Warframe::Models::SyndicateMission.new(json) }

  it 'can read SyndicateMission data' do
    expect(mission.syndicate).to eq 'Ostrons'
    expect(mission.active?).to eq true
  end
end
