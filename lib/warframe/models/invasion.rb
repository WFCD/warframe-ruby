# frozen_string_literal: true

require_relative './base'
require_relative './attributes/id'
require_relative './attributes/expiry'
require_relative './attributes/active'
require_relative './attributes/eta'
require_relative './attributes/description'
require_relative './attributes/reward_types'
require_relative './attributes/start_string'

module Warframe
  module Models
    # Invasion data model.
    # {https://api.warframestat.us/pc/invasions /:platform/invasions}
    class Invasion < Warframe::Models::Base
      include Warframe::Models::Attributes::ID
      include Warframe::Models::Attributes::Activation
      include Warframe::Models::Attributes::Expiry
      include Warframe::Models::Attributes::ETA
      include Warframe::Models::Attributes::Description
      include Warframe::Models::Attributes::RewardTypes
      include Warframe::Models::Attributes::StartString

      # Attacking faction data.
      # @return [OpenStruct]
      attr_reader :attacker

      # The rewards for helping the attacking faction.
      # @return [OpenStruct]
      attr_reader :attacker_reward

      # Attacking Faction Name
      # @return [String]
      attr_reader :attacking_faction

      # Whether or not the invasion has been completed.
      # @return [Boolean]
      attr_reader :completed
      alias completed? completed

      # The status of completion of the invasion.
      # @return [Array<Float>]
      attr_reader :completion

      # Defending faction data.
      # @return [OpenStruct]
      attr_reader :defender

      # The rewards for helping the defending faction.
      # @return [OpenStruct]
      attr_reader :defender_reward

      # The name of the defending faction.
      # @return [String]
      attr_reader :defending_faction

      # The name of the node of the invasion.
      # @return [String]
      attr_reader :node

      # The key of the node.
      # @return [String]
      attr_reader :node_key

      # The amount of runs required for completion.
      # @return [Integer]
      attr_reader :required_runs
    end
  end
end
