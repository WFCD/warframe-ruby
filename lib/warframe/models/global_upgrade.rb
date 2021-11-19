# frozen_string_literal: true

require_relative './attributes/expiry'
require_relative './attributes/description'
require_relative './attributes/eta'

module Warframe
  module Models
    # Global Upgrades data model.
    class GlobalUpgrade < Warframe::Models::Base
      include Warframe::Models::Attributes::Expired
      include Warframe::Models::Attributes::Desc
      include Warframe::Models::Attributes::ETA

      # The start of the global upgrade.
      # @return [String]
      attr_reader :start

      # The end of the global upgrade.
      # @return [String]
      attr_reader :end

      # The upgrade to be received.
      # @return [String]
      attr_reader :upgrade

      # The operation of the global upgrade.
      # @return [String]
      attr_reader :operation

      # The symbol of the operation.
      # @return [String]
      attr_reader :operation_symbol

      # The upgrade operation value.
      # @return [Integer]
      attr_reader :upgrade_operation_value
    end
  end
end
