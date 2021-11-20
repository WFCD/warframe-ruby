# frozen_string_literal: true

require_relative './base'
require_relative 'attributes/id'
require_relative 'attributes/expiry'
require_relative 'attributes/active'
require_relative 'attributes/eta'

module Warframe
  module Models
    # Model for Sortie Data {https://api.warframestat.us/pc/sortie> /:platform/sortie}
    class Sortie < Warframe::Models::Base
      include Warframe::Models::Attributes::ID
      include Warframe::Models::Attributes::Activation
      include Warframe::Models::Attributes::Expiration
      include Warframe::Models::Attributes::ETA

      # The boss for this part of the sortie.
      # @return [String]
      attr_reader :boss

      # The faction fighting you in this mission.
      # @return [String]
      attr_reader :faction

      # Modifiers active for this challenge.
      # @return [Array]
      attr_reader :variants

      # The reward pool which this is pulling from.
      # @return [String]
      attr_reader :reward_pool
    end
  end
end
