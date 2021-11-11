# frozen_string_literal: true

require_relative './base'
require_relative './common/expiry'
require_relative './common/expired'
require_relative './common/active'
require_relative './common/eta'

module Warframe
  module Models
    # Model for World State data {https://api.warframestat.hub/pc/alerts /:platform/alerts}
    class Alerts < Warframe::Models::Base
      include Warframe::Models::Common::Expiry
      include Warframe::Models::Common::Expired
      include Warframe::Models::Common::Active
      include Warframe::Models::Common::ETA

      # The id of the Alert.
      # @return [String]
      attr_reader :id

      # When this alert goes into effect.
      # @return [String]
      attr_reader :start_string

      # The types of rewards to expect from this alert.
      # @return [Array<String>]
      attr_reader :reward_types

      # The mission data of this alert.
      # @return [OpenStruct]
      attr_reader :mission
    end
  end
end
