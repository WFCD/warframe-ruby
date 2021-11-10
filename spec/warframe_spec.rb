# frozen_string_literal: true

RSpec.describe Warframe do
  it 'has a version number' do
    expect(Warframe::VERSION).not_to be nil
  end
end
