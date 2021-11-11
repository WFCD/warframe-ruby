# frozen_string_literal: true

require 'fast_underscore'
require 'dm-core'

module Warframe
  module Models
    # Warfame Base Model
    # Defaults to initialize from a [Hash],
    # {from_array} allows for instantiation from an [Array].
    class Base
      include DataMapper::Resource
      property :error, String
      property :code, Integer

      def initialize(options = {})
        options.each do |k, v|
          renamed = k.to_s.underscore
          if v.is_a? Boolean
            instance_variable_set "@#{renamed}?", v
          else
            instance_variable_set "@#{renamed}", v
          end
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
