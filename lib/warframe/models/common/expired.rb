# frozen_string_literal: true

module Warframe
  module Models
    module Common
      # Adds a boolean attribute expired? to see whether or not the even has expired.
      module Expired
        # Whether or not the event has expired.
        # @return [Boolean]
        attr_reader :expired
        alias expired? expired
      end
    end
  end
end
