# frozen_string_literal: true

require_relative './base'

module Warframe
  module Models
    # Model for World State data {https://api.warframestat.hub/pc/alerts /:platform/alerts}
    class Alerts < Warframe::Models::Base
      # The id of the Alert.
      # @return [String]
      attr_reader :id

      # The time the alert was activated.
      # @return [String]
      attr_reader :activation

      # When this alert goes into effect.
      # @return [String]
      attr_reader :start_string

      # When the event will expire
      # @return [String]
      attr_reader :expiry

      # Whether or not the event is active.
      # @return [Boolean]
      attr_reader :active
      alias active? active

      # Time remaining for this alert.
      # @return [String]
      attr_reader :eta

      # The types of rewards to expect from this alert.
      # @return [Array<String>]
      attr_reader :reward_types

      # The mission data of this alert.
      # @return [OpenStruct]
      attr_reader :mission
    end
  end
end
