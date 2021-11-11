# frozen_string_literal: true

require_relative './base'
require_relative './common/id'
require_relative './common/expiry'
require_relative './common/active'
require_relative './common/eta'
require_relative './common/description'
require_relative './common/reward_types'
require_relative './common/start_string'

module Warframe
  module Models
    # Invasion data model.
    class Invasions < Warframe::Models::Base
      include Warframe::Models::Common::ID
      include Warframe::Models::Common::Activation
      include Warframe::Models::Common::Expiry
      include Warframe::Models::Common::ETA
      include Warframe::Models::Common::Description
      include Warframe::Models::Common::RewardTypes
      include Warframe::Models::Common::StartString

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
