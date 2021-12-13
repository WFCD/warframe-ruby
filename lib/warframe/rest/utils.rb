# frozen_string_literal: true

require_relative './request'

module Warframe
  module REST
    # Private REST Utilities
    module Utils
      private

      # Performs a get operation on the requested path, and returns a mapped response of the requested model.
      # @param path [String]
      # @param klass [Warframe::Models]
      def get(path, klass)
        inst = @client || self
        return inst.get_from_cache(path) if inst.find_in_cache(path)

        result = Warframe::REST::Request.new(inst, path, klass).send
        inst.add_to_cache(path, result)
      end
    end
  end
end
