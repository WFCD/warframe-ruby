# frozen_string_literal: true

require 'rspec'

RSpec.describe Warframe::REST::API do
  let(:client) { Warframe::REST::Client.new }

  context '#alerts' do
    it 'does not raise error on call' do
      expect { client.alerts }.to_not raise_error
    end

    it 'properly loads data into model' do
      expect(client.alerts).to be_a Warframe::Models::Alert
    end
  end

  context '#cetus' do
    it 'does not raise error on call' do
      expect { client.cetus }.to_not raise_error
    end

    it 'properly loads data into model' do
      expect(client.cetus).to be_a Warframe::Models::Cetus
    end
  end

  context '#nightwave' do
    it 'does not raise error on call' do
      expect { client.nightwave }.to_not raise_error
    end

    it 'properly loads data into model' do
      expect(client.nightwave).to be_a Warframe::Models::Nightwave
    end
  end

end
