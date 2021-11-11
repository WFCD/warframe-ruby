# frozen_string_literal: true

require_relative './base'
require_relative './attributes/expired'
require_relative './attributes/active'
require_relative './attributes/eta'
require_relative './attributes/reward_types'
require_relative './attributes/start_string'

module Warframe
  module Models
    # Model for World State data {https://api.warframestat.hub/pc/alerts /:platform/alerts}
    class Alerts < Warframe::Models::Base
      include Warframe::Models::Attributes::Expired
      include Warframe::Models::Attributes::Active
      include Warframe::Models::Attributes::ETA
      include Warframe::Models::Attributes::RewardTypes
      include Warframe::Models::Attributes::StartString

      # The id of the Alert.
      # @return [String]
      attr_reader :id

      # The mission data of this alert.
      # @return [OpenStruct]
      attr_reader :mission
    end
  end
end
