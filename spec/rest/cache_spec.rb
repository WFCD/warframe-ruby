# frozen_string_literal: true

RSpec.describe 'Warframe::REST:Client Cache' do
  client = Warframe::REST::Client.new
  let(:old) { Warframe::Models::Nightwave.new(load_json_file('nightwave')) }

  it 'correctly caches object models' do
    # Create initial MOCK entry data with 1 second expiry
    client.add_to_cache('/nightwave', old, 1)
    expect(client.get_from_cache('/nightwave')).to eq old

    # Should Pull from memory on new requests
    expect(client.nightwave).to eq old

    # Wait 1 second
    sleep 1

    # Cache should now be set to a new response on next call
    client.nightwave
    expect(old).to_not eq client.get_from_cache('/nightwave')
  end
end
