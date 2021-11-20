# frozen_string_literal: true

require_relative './base'

module Warframe
  module Models
    # Model for SteelPath Data {https://api.warframestat.us/pc/steelPath> /:platform/steelPath}
    class SteelPath < Warframe::Models::Base
      include Warframe::Models::Attributes::Active
      include Warframe::Models::Attributes::Expiry

      # The currently available item from Teshin.
      # @return [OpenStruct]
      attr_reader :current_reward

      # The time remaining of the current reward.
      # @return [String]
      attr_reader :remaining

      # Current rotation of items the Arbiters have to offer.
      # @return [Array<OpenStruct>]
      attr_reader :rotation

      # Current rotation of items Teshin has to offer.
      # @return [Array<OpenStruct>]
      attr_reader :evergreens

      # Current incursion data
      # @return [OpenStruct]
      attr_reader :incursions
    end
  end
end
