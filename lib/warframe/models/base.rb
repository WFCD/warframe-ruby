# frozen_string_literal: true

require 'fast_underscore'

module Warframe
  module Models
    # Warfame Base Model
    # Defaults to initialize from a [Hash],
    # {from_array} allows for instantiation from an [Array].
    class Base
      attr_reader :error, :code

      def initialize(options = {})
        options.each do |k, v|
          renamed = k.to_s.underscore
          instance_variable_set "@#{renamed}", v
        end
      end

      # Constructs an Array of new objects
      # @return [Array]
      def self.from_array(arr)
        arr.map { |obj| initialize obj }
      end
    end
  end
end
