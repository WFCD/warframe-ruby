# frozen_string_literal: true

require 'rspec'

RSpec.describe 'Language Support' do
  context 'French' do
    let(:client) { Warframe::REST::Client.new language: 'fr' }

    it 'is able to instantiate' do
      expect { client }.to_not raise_error
    end

    it 'is different than the english translation' do
      translations = client.news[0].translations
      english = translations[:en]
      french = translations[client.language]
      expect(translations.size).to_not eq 1
      expect(french).to_not eq english
    end
  end
end
