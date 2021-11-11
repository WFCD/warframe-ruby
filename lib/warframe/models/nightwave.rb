# frozen_string_literal: true

require 'warframe/models/base'

module Warframe
  module Models
    # Class for the response of {https://api.warframestat.us/pc/nightwave /:platform/nightwave}
    class Nightwave < Warframe::Models::Base

      # The ID of the Nightwave Response.
      # @return [String]
      attr_reader :id

      # The Time the Mission was or will be activated.
      # @return [String]
      attr_reader :activation

      # The time that the mission will expire.
      # @return [String]
      attr_reader :expiry

      # The types of rewards you can get from this event.
      # @return [Array<String>]
      attr_reader :reward_types

      # The current phase of this event.
      # @return [Integer]
      attr_reader :phase

      # List of all possible challenges.
      # @return [Array<Hash>]
      attr_reader :possible_challenges

      # Active Challenges for this event.
      # @return [Array<Hash>]
      attr_reader :active_challenges
    end
  end
end
