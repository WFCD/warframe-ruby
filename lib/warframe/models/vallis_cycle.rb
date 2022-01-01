# frozen_string_literal: true

require_relative './base'
require_relative './attributes/id'
require_relative './attributes/active'
require_relative './attributes/expiry'

module Warframe
  module Models
    # Model for VallisCycle data.
    # {https://api.warframestat.us/pc/vallisCycle /:platform/vallisCycle}
    class VallisCycle < Warframe::Models::Base
      include Warframe::Models::Attributes::ID
      include Warframe::Models::Attributes::Expiry
      include Warframe::Models::Attributes::Activation

      # @!attribute time_left
      # @return [String] time left until next cycle.
      attr_reader :time_left

      # @!attribute is_warm?
      # @return [Boolean] whether or not it currently is warm.
      attr_reader :is_warm
      alias is_warm? is_warm

      # @!attribute state
      # @return [String] the current world state (Cold or Warm)
      attr_reader :state

      # @!attribute short_string
      # @return [String] the time remaining until state change. Ex: `5m to Warm`.
      attr_reader :short_string
    end
  end
end
