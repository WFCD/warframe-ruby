# frozen_string_literal: true

RSpec.describe Warframe::ClientWrapper do
  let(:default_client) { Warframe::ClientWrapper.new }
  let(:ps4_french_client) { Warframe::ClientWrapper.new platform: 'ps4', language: 'de' }

  describe '#base_url' do
    it 'sets the provided base url' do
      expect(default_client.base_url).to eq 'https://api.warframestat.us/pc'
    end
  end

  describe '#platform' do
    it 'defaults to pc' do
      expect(default_client.platform).to eq 'pc'
    end

    it 'can be set to another type' do
      expect(ps4_french_client.platform).to eq 'ps4'
    end
  end

  describe '#language' do
    it 'defaults to english' do
      expect(default_client.language).to eq 'en'
    end

    it 'can be set to a different language' do
      expect(ps4_french_client.language).to eq 'de'
    end
  end
end
