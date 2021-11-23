# frozen_string_literal: true

require_relative './base'
require_relative 'attributes/id'
require_relative 'attributes/active'
require_relative 'attributes/expiry'

module Warframe
  module Models
    # Model for CetusCycle Data {https://api.warframestat.us/pc/cetusCycle> /:platform/cetusCycle}
    # TODO: Replace above documentation path with correct one.
    class Cetus < Warframe::Models::Base
      include Warframe::Models::Attributes::ID
      include Warframe::Models::Attributes::Activation
      include Warframe::Models::Attributes::Expiry

      # Whether or not it is currently day.
      # @return [Boolean]
      attr_reader :is_day
      alias day? is_day

      # Current world state of Cetus.
      # @return [String]
      attr_reader :state

      # Whether or not this is Cetus.
      # @return [Boolean]
      attr_reader :is_cetus
      alias cetus? is_cetus

      # Time left until state change.
      # @return [String]
      attr_reader :time_left

      # A short string of the time left until state change.
      # @return [String]
      attr_reader :short_string
    end
  end
end
