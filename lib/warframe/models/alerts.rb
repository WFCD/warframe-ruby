# frozen_string_literal: true

require_relative './base'
require_relative './common/expired'
require_relative './common/active'
require_relative './common/eta'
require_relative './common/reward_types'
require_relative './common/start_string'

module Warframe
  module Models
    # Model for World State data {https://api.warframestat.hub/pc/alerts /:platform/alerts}
    class Alerts < Warframe::Models::Base
      include Warframe::Models::Common::Expired
      include Warframe::Models::Common::Active
      include Warframe::Models::Common::ETA
      include Warframe::Models::Common::RewardTypes
      include Warframe::Models::Common::StartString

      # The id of the Alert.
      # @return [String]
      attr_reader :id

      # The mission data of this alert.
      # @return [OpenStruct]
      attr_reader :mission
    end
  end
end
