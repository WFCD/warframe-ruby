# frozen_string_literal: true

# require 'dry-struct'
require 'fast_underscore'

# module Types
#   include Dry.Types()
#
#   Date = Strict::Date | JSON::Date
#   Symbol = Strict::Symbol | JSON::Symbol
#   Time = Strict::Time | JSON::Time
#   Decimal = Coercible::Decimal
# end

module Warframe
  module Models
    class Base
      def initialize(options = {})
        options.each { |k, v| instance_variable_set "@#{k.to_s.underscore}", v }
      end
    end
  end
end
