# frozen_string_literal: true

require 'warframe/models/base'

module Warframe
  module Models
    # Class for the response of {https://api.warframestat.us/pc/news /:platform/news}
    class News < Warframe::Models::Base
      # The ID of the News Model's Instance.
      # @return [String]
      property :id, String

      # The Date the News was released
      # @return [String]
      property :date, String

      # The Image Link from the News page.
      # @return [String]
      property :image_link, String

      # Estimated Time of Arrival.
      # @return [String]
      property :eta, String

      # Link for more information on this News.
      # @return [String]
      property :link, String

      # Whether or not the News has to do with Prime Access.
      # @return [Boolean]
      property :prime_access?, Boolean

      # Whether or not a DEV Stream is Available.
      # @return [Boolean]
      property :stream?, Boolean

      # Whether or not this news is regarding an update
      # @return [Boolean]
      property :update?, Boolean

      # Whether or not this news is of priority
      # @return [Boolean]
      property :priority?, Boolean

      # The entire response as a long string
      # @return [String]
      property :as_string, String

      # The actual message of the News
      # @return [String]
      property :message, String

      # Available translations for the the News.
      # @return [Hash<String, String>] Key as language code and Value as translation.
      attr_reader :translations
    end
  end
end
