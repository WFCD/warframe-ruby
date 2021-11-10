# frozen_string_literal: true

require 'rspec'

RSpec.describe Warframe::REST::Nightwave do
  let(:default_client) { Warframe::REST::Client.new }
  let(:ps4_french_client) { Warframe::REST::Client.new platform: 'ps4', language: 'de' }

  describe '#nightwave' do
    it 'should respond to method call' do
      expect { default_client.nightwave }.to_not raise_error
    end
  end
end
