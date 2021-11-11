# frozen_string_literal: true

require 'warframe/models/base'

module Warframe
  module Models
    # Model for the response of {https://api.warframestat.us/pc/news /:platform/news}
    class News < Warframe::Models::Base
      # The ID of the News Model's Instance.
      # @return [String]
      attr_reader :id

      # The Date the News was released
      # @return [String]
      attr_reader :date

      # The Image Link from the News page.
      # @return [String]
      attr_reader :image_link

      # Estimated Time of Arrival.
      # @return [String]
      attr_reader :eta

      # Link for more information on this News.
      # @return [String]
      attr_reader :link

      # Whether or not the News has to do with Prime Access.
      # @return [Boolean]
      attr_reader :prime_access
      alias prime_access? prime_access

      # Whether or not a DEV Stream is Available.
      # @return [Boolean]
      attr_reader :stream
      alias stream? stream

      # Whether or not this news is regarding an update
      # @return [Boolean]
      attr_reader :update
      alias update? update

      # Whether or not this news is of priority
      # @return [Boolean]
      attr_reader :priority
      alias priority? priority

      # The entire response as a long string
      # @return [String]
      attr_reader :as_string

      # The actual message of the News
      # @return [String]
      attr_reader :message

      # Available translations for the the News.
      # @return [Hash<String, String>] Key as language code and Value as translation.
      attr_reader :translations
    end
  end
end
