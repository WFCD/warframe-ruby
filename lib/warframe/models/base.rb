# frozen_string_literal: true

require 'fast_underscore'

module Warframe
  # Models of HTTP responses.
  module Models
    # Warframe Base Model.
    class Base
      attr_reader :error, :code

      # Creates a new [Warframe::Models::Base] instance.
      # @param options [Hash, Array] a parsed JSON object, or collection of JSON objects.
      def initialize(options = {})
        if options.is_a? Array
          from_array options
        else
          options.each do |k, v|
            renamed = k.to_s.underscore
            v = v.map { |obj| OpenStruct.new obj } if v.is_a?(Array) && v[0].is_a?(Hash)
            v = OpenStruct.new v if v.is_a? Hash
            instance_variable_set "@#{renamed}", v
          end
        end
      end

      private

      # Constructs an Array of new [Warframe::Models::Base]'s'.
      # @return [Array]
      def from_array(arr)
        arr.map { |obj| initialize obj }
      end
    end
  end
end
