# frozen_string_literal: true

def alerts
  context '#alerts' do
    it 'does not raise error on call' do
      expect { client.alerts }.to_not raise_error
    end

    it 'properly loads data into model' do
      expect(client.alerts).to be_a(Array || Warframe::Models::Alert)
    end
  end
end

def cetus
  context '#cetus' do
    it 'does not raise error on call' do
      expect { client.cetus }.to_not raise_error
    end

    it 'properly loads data into model' do
      expect(client.cetus).to be_a Warframe::Models::Cetus
    end
  end
end

def cambion
  context '#cambion_drift' do
    it 'does not raise error on call' do
      expect { client.cambion_drift }.to_not raise_error
    end

    it 'properly loads data into model' do
      expect(client.cambion_drift).to be_a Warframe::Models::CambionDrift
    end
  end
end

def nightwave
  context '#nightwave' do
    it 'does not raise error on call' do
      expect { client.nightwave }.to_not raise_error
    end

    it 'properly loads data into model' do
      expect(client.nightwave).to be_a Warframe::Models::Nightwave
    end
  end
end

def vallis_cycle
  context '#vallis_cycle' do
    it 'does not raise error on call' do
      expect { client.vallis_cycle }.to_not raise_error
    end

    it 'properly loads data into model' do
      expect(client.vallis_cycle).to be_a Warframe::Models::VallisCycle
    end
  end
end

RSpec.describe Warframe::REST::API do
  let(:client) { Warframe::REST::Client.new }

  alerts
  cetus
  cambion
  nightwave
  vallis_cycle
end
