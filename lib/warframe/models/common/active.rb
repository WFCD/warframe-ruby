# frozen_string_literal: true

module Warframe
  module Models
    module Common
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

      # For models that require both {Warframe::Models::Common::Active Common::Active}
      # and {Warframe::Models::Common::Activation Common::Activation}
      #
      # Includes both the active? and activation methods.
      module ActiveBoth
        include Activation
        include Active
      end
    end
  end
end
