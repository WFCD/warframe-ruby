# frozen_string_literal: true

require 'warframe/models/base'

module Warframe
  module Models
    # Class for the response of {https://api.warframestat.us/pc/nightwave /:platform/nightwave}
    class Nightwave < Warframe::Models::Base

      # The ID of the Nightwave Response.
      # @return [String]
      property :id, String

      # The Time the Mission was or will be activated.
      # @return [String]
      property :activation, String

      # The time that the mission will expire.
      # @return [String]
      property :expiry, String

      # The types of rewards you can get from this event.
      # @return [Array<String>]
      property :reward_types, Array

      # The current phase of this event.
      # @return [Integer]
      property :phase, Integer

      # List of all possible challenges.
      # @return [Array<Hash>]
      property :possible_challenges, Array

      # Active Challenges for this event.
      # @return [Array<Hash>]
      property :active_challenges, Array
    end
  end
end
