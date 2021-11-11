# frozen_string_literal: true

module Warframe
  module Models
    # Common Attributes between models.
    module Common
      # Includes the expiry attribute.
      module Expiry
        # When the event will expire.
        # @return [String]
        attr_reader :expiry
      end
    end
  end
end
