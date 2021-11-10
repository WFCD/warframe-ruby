# frozen_string_literal: true

require 'net/http'
require 'net/https'
require 'json'

module Warframe
  module REST
    # A request to send to the Warframe Stat API
    class Request
      attr_accessor :client, :path, :options

      # Instantiate a Request
      #
      # @param client [Warframe::Rest::Client]
      # @param klass [Class]
      # @param options [Hash]
      # @return [Warframe:Rest:Request]
      def initialize(client, path, klass, options = {})
        @client = client
        @path = client.base_url + path
        @options = options
        @klass = klass
      end

      def send
        uri = URI(path)
        req = Net::HTTP::Get.new(uri)
        req['Accept-Language'] = @client.language

        resp = Net::HTTP.get(uri) do |http|
          http['Accept-Language'] = @client.language
          http.use_ssl = true
          http.request req
        end

        @klass.new JSON.parse(resp)
      end
    end
  end
end
