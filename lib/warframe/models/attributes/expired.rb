# frozen_string_literal: true

require_relative './expiry'

module Warframe
  module Models
    module Attributes
      # Adds a boolean attribute expired? to see whether or not the even has expired.
      module Expired
        include Warframe::Models::Attributes::Expiry

        # Whether or not the event has expired.
        # @return [Boolean]
        attr_reader :expired
        alias expired? expired
      end
    end
  end
end
