# frozen_string_literal: true

RSpec.describe Warframe::Models::ConclaveChallenge do
  let(:json) { load_json_file 'conclave_challenge' }
  it 'can be instantiated from JSON' do
    expect { Warframe::Models::ConclaveChallenge.new(json) }.to_not raise_error
  end

  it 'can be instantiated from JSON Array' do
    arr = Array.new(10, json)
    expect { Warframe::Models::ConclaveChallenge.new(arr) }.to_not raise_error
  end

  let(:challenge) { Warframe::Models::ConclaveChallenge.new(json) }

  it 'can read Conclave Challenge data' do
    expect(challenge.amount).to eq 10
    expect(challenge.mode).to eq 'Any Mode'
  end
end
