# frozen_string_literal: true

require 'rspec'

RSpec.describe Warframe::Models::Cetus do
  let(:json) { load_json_file 'cetus' }
  let(:cetus) { Warframe::Models::Cetus.new json }

  it 'can be instantiated from JSON' do
    expect { cetus }.to_not raise_error
  end

  it 'can be instantiated from JSON Array' do
    json_arr = Array.new(6, json)
    expect { Warframe::Models::Cetus.new json_arr }.to_not raise_error
  end

  it 'can read the newly created objects attributes' do
    expect(cetus.day?).to be_a_boolean
  end
end
