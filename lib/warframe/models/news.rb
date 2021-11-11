# frozen_string_literal: true

require_relative './base'

module Warframe
  module Models
    # Model for the response of {https://api.warframestat.us/pc/news /:platform/news}
    class News < Warframe::Models::Base
      # The ID of the News Model's Instance.
      # @return [String]
      attr_reader :id

      # The date the news was released.
      # @return [String]
      attr_reader :date

      # The image link from the news page.
      # @return [String]
      attr_reader :image_link

      # Estimated Time Until Arrival
      # @return [String]
      attr_reader :eta

      # Link for more information on this news.
      # @return [String]
      attr_reader :link

      # Whether or not the news has to do with Prime Access.
      # @return [Boolean]
      attr_reader :prime_access
      alias prime_access? prime_access

      # Whether or not a DEV stream is available.
      # @return [Boolean]
      attr_reader :stream
      alias stream? stream

      # Whether or not this news is regarding an update.
      # @return [Boolean]
      attr_reader :update
      alias update? update

      # Whether or not this news is of priority.
      # @return [Boolean]
      attr_reader :priority
      alias priority? priority

      # The entire response as a long string.
      # @return [String]
      attr_reader :as_string

      # The actual message of the news.
      # @return [String]
      attr_reader :message

      # Available translations for the the news.
      # @return [OpenStruct]
      attr_reader :translations
    end
  end
end
