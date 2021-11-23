# frozen_string_literal: true

require_relative './base'
require_relative 'attributes/id'
require_relative 'attributes/expiry'
require_relative 'attributes/active'

module Warframe
  module Models
    # Model for Cambion Drift Data {https://api.warframestat.us/pc/cambionCycle> /:platform/cambionCycle}
    class CambionDrift < Warframe::Models::Base
      include Warframe::Models::Attributes::ID
      include Warframe::Models::Attributes::Activation
      include Warframe::Models::Attributes::Expiry

      # Current active state of the world, either 'vome' or 'fass'.
      # @return [String]
      attr_reader :active

      # The time remaining until world state switches.
      # @return [String]
      attr_reader :time_left
    end
  end
end
