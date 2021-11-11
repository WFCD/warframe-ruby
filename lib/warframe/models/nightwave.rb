# frozen_string_literal: true

require_relative './base'
require_relative './attributes/active'
require_relative './attributes/id'
require_relative './attributes/expiry'
require_relative './attributes/reward_types'

module Warframe
  module Models
    # Model for the response of {https://api.warframestat.us/pc/nightwave /:platform/nightwave}
    class Nightwave < Warframe::Models::Base
      include Warframe::Models::Attributes::Activation
      include Warframe::Models::Attributes::ID
      include Warframe::Models::Attributes::Expiry
      include Warframe::Models::Attributes::RewardTypes

      # The current phase of this event.
      # @return [Integer]
      attr_reader :phase

      # The current Nightwave Tag
      # @return [String]
      attr_reader :tag

      # The current Nightwave Season
      # @return [Integer]
      attr_reader :season

      # List of all possible challenges.
      # @return [Array<OpenStruct>]
      attr_reader :possible_challenges

      # Active Challenges for this event.
      # @return [Array<OpenStruct>]
      attr_reader :active_challenges
    end
  end
end
