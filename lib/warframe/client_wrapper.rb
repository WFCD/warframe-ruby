# frozen_string_literal: true

module Warframe
  # Wraps the [Warframe::Rest::Client] with necessary variables and methods
  class ClientWrapper
    BASE_URL = 'https://api.warframestat.us/'
    DEFAULT_OPTIONS = { platform: 'pc', language: 'en' }.freeze
    attr_accessor :platform, :language

    # Initialize the Restful Client
    #
    # @param options [Hash]
    # @return [Warframe::Client]
    def initialize(options = {})
      DEFAULT_OPTIONS.merge(options).each { |k, v| instance_variable_set "@#{k}", v }

      yield self if block_given?
    end

    def base_url
      BASE_URL + platform
    end

    # might need to manipulate user_agent
  end
end
