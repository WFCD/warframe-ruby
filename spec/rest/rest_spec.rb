# frozen_string_literal: true

RSpec.describe Warframe::REST::API do
  let(:default_client) { Warframe::REST::Client.new }

  routes = Warframe::REST::API.constants

  context 'Routes' do
    routes.each do |route|
      method = route.to_s.downcase
      describe route do
        it 'responds to method call' do
          expect(default_client.send(method))
        end

        it 'properly loads data' do
          sent = default_client.send(method)
          model_instance = Warframe::Models.const_get(route)
          if sent.is_a? Array
            expect(sent.count).to be_positive
            expect(sent[0].id).to_not be nil

            sent.each do |obj|
              expect(obj).to be_a model_instance
            end
          else
            expect(sent).to be_a model_instance
          end
        end
      end
    end
  end
end
