# frozen_string_literal: true

require_relative './base'
require_relative './common/active'
require_relative './common/id'
require_relative './common/expiry'
require_relative './common/reward_types'

module Warframe
  module Models
    # Model for the response of {https://api.warframestat.us/pc/nightwave /:platform/nightwave}
    class Nightwave < Warframe::Models::Base
      include Warframe::Models::Common::Activation
      include Warframe::Models::Common::ID
      include Warframe::Models::Common::Expiry
      include Warframe::Models::Common::RewardTypes

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
