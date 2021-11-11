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
        Warframe::REST::Request.new(@client || self, path, klass).send
      end
    end
  end
end
