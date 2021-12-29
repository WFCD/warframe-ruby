# frozen_string_literal: true

module Warframe
  module Models
    module Attributes
      # Includes the active? attribute.
      module Active
        # Whether or not the event is active.
        # @return [Boolean]
        attr_reader :active
        alias active? active
      end

      # Includes the activation date as an attribute.
      module Activation
        # The time the event was activated.
        # @return [String]
        attr_reader :activation
      end

      # For models that require both {Warframe::Models::Attributes::Active Attributes::Active}
      # and {Warframe::Models::Attributes::Activation Attributes::Activation}
      #
      # Includes both the active? and activation methods.
      module ActiveBoth
        include Activation
        include Active
      end
    end
  end
end
