# frozen_string_literal: true

RSpec.describe Warframe::Models::News do
  let(:json) { load_json_file 'news' }

  it 'can be instantiated with JSON input' do
    expect { Warframe::Models::News.new json }.to_not raise_error
  end

  it 'can be instantiated from a JSON array' do
    json_array = Array.new(6, json)
    expect { Warframe::Models::News.new json_array }.to_not raise_error
  end

  let(:news) { Warframe::Models::News.new json }

  it 'can access instance variables' do
    expect(news.id).to_not be nil
  end

  it 'can access boolean that end with ?' do
    expect(news.prime_access?).to_not be nil
  end
end
