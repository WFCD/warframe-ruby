# frozen_string_literal: true

require 'warframe/client_wrapper'
require 'warframe/rest/api'

module Warframe
  module REST
    # The main application Client for access live feed data.
    #
    # == Example Usage
    #
    #   client = Warframe::REST::Client.new
    #   client.nightwave.tag # => 'Radio Legion Intermission'
    #
    # == Accepted Platforms
    #
    #   default = 'pc'
    #   all_platorms = [ 'pc', 'ps4', 'xb1', 'swi' ]
    #
    #   client = Waframe::REST::Client.new(platform: 'ps4')
    #   client.platform # => 'ps4'
    #   client.language # => 'en'
    #
    # == Accepted Languages
    #
    #   default = 'en'
    #   all_languages = [ 'de', 'es', 'en', 'fr', 'it', 'ko', 'pl', 'pt', 'ru', 'zh' ]
    #
    #   client = Warframe::REST::Client.new(language: 'fr')
    #   client.language # => 'fr'
    #   client.platform # => 'pc'
    #
    # == Setting both Platform and Language
    #
    #   client = Warframe::REST::Client.new(platform: 'ps4', language: 'de')
    #   client.platform # => 'ps4'
    #   client.language # => 'de'
    class Client < Warframe::ClientWrapper
      include Warframe::REST::API
    end
  end
end
