# frozen_string_literal: true

module Warframe
  # Wraps the [Warframe::Rest::Client] with necessary variables and methods
  class ClientWrapper
    BASE_URL = 'https://api.warframestat.us/'
    attr_accessor :platform, :language

    # Initialize the Restful Client
    #
    # @param options [Hash]
    # @return [Warframe::Client]
    def initialize(options = { platform: 'pc', language: 'en' })
      options.each { |k, v| instance_variable_set "@#{k}", v }

      yield self if block_given?
    end

    def base_url
      BASE_URL + platform
    end

    # might need to manipulate user_agent
  end
end
