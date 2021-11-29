# frozen_string_literal: true

RSpec.describe 'Warframe::REST:Client Cache' do
  let(:client) { Warframe::REST::Client.new }
  let(:old) { Warframe::Models::Nightwave.new(load_json_file('nightwave')) }

  it 'correctly caches object models' do
    # Create initial MOCK entry data with 1 second expiry
    Warframe::Models::Nightwave.new_entry('/nightwave', old, 1)
    expect(Warframe::Models::Nightwave.cache_content).to be_a Warframe::Models::Nightwave
    expect(Warframe::Models::Nightwave.expired?).to eq false

    # Should Pull from memory on new requests
    expect(client.nightwave).to eq Warframe::Models::Nightwave.cache_content

    # Wait 1 second
    sleep 1

    # Cache should expire
    expect(Warframe::Models::Nightwave.expired?).to eq true

    # Cache should now be set to a new response on next call
    client.nightwave
    expect(old).to_not eq Warframe::Models::Nightwave.cache_content
  end
end
