# frozen_string_literal: true

RSpec.describe Warframe::REST::API do
  let(:default_client) { Warframe::REST::Client.new }

  routes = Warframe::REST::API.constants

  puts "Routes: #{routes}"
  routes.each do |route|
    describe route do
      it 'is navigable' do
        expect(default_client.send(route.to_s.downcase))
      end
    end
  end
end
