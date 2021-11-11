# frozen_string_literal: true

require_relative './base'

module Warframe
  module Models
    # Model for the response of {https://api.warframestat.us/pc/nightwave /:platform/nightwave}
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

      # The current Nightwave Tag
      # @return [String]
      attr_reader :tag

      # The current Nightwave Season
      # @return [Integer]
      attr_reader :integer

      # List of all possible challenges.
      # @return [Array<OpenStruct>]
      attr_reader :possible_challenges

      # Active Challenges for this event.
      # @return [Array<OpenStruct>]
      attr_reader :active_challenges
    end
  end
end
