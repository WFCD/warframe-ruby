# frozen_string_literal: true

module Warframe
  module Models
    module Attributes
      # Adds the start_string attribute, for when an event will begin.
      module StartString
        # When this event goes into effect.
        # @return [String]
        attr_reader :start_string
      end
    end
  end
end
