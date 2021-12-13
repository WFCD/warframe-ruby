# frozen_string_literal: true

require_relative 'cache'

module Warframe
  # @abstract
  # @private
  # Wraps the {Warframe::REST::Client REST::Client} with necessary variables and methods.
  #
  # This class should < not be used > for interacting with the API.
  class ClientWrapper < Warframe::Cache
    # The base Warframe Stat API link
    BASE_URL = 'https://api.warframestat.us/'
    # Default attributes
    DEFAULT_OPTIONS = { platform: 'pc', language: 'en' }.freeze

    # The Client Cache
    attr_accessor :platform, :language

    # Initialize the Wrapper for {Warframe::REST::Client REST::Client}
    #
    # @param options [Hash] merges with {DEFAULT_OPTIONS}
    #
    # See {Warframe::REST::Client REST::Client} for all accepted languages, platforms, and examples.
    #
    # This class is ABSTRACT and should not be instantiated outside of {Warframe::REST::Client REST::Client}.
    # @return [Warframe::ClientWrapper]
    def initialize(options = {})
      super()
      DEFAULT_OPTIONS.merge(options).each { |k, v| instance_variable_set "@#{k}", v }
      yield self if block_given?
    end

    # @return [String] the base url and platform combined.
    def base_url
      BASE_URL + platform
    end
  end
end
