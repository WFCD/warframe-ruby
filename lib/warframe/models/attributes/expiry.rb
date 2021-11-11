# frozen_string_literal: true

module Warframe
  module Models
    # Common Attributes between models.
    module Attributes
      # Includes the expiry attribute.
      module Expiry
        # When the event will expire.
        # @return [String]
        attr_reader :expiry
      end

      # Adds a boolean attribute expired? to see whether or not the even has expired.
      module Expired
        # Whether or not the event has expired.
        # @return [Boolean]
        attr_reader :expired
        alias expired? expired
      end

      # Adds the {Warframe::Models::Attributes::Expiry Attributes::Expiry} &
      # {Warframe::Models::Attributes::Expired Attributes::Expired} attributes.
      module Expiration
        include Expiry
        include Expired
      end
    end
  end
end
