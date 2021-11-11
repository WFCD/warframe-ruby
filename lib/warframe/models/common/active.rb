module Warframe
  module Models
    module Common
      # Includes the active? attribute.
      module Active
        # The time the event was activated.
        # @return [String]
        attr_reader :activation

        # Whether or not the event is active.
        # @return [Boolean]
        attr_reader :active
        alias active? active
      end
    end
  end
end