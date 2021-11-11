# frozen_string_literal: true

require 'warframe/rest/request'

module Warframe
  module REST
    # REST Utilities, home of the #get method
    module Utils
      private

      # @param path [String]
      # @param klass [Warframe::Models]
      # @param options [Hash]
      def get(path, klass, options = {})
        Warframe::REST::Request.new(@client || self, path, klass, options).send
      end
    end
  end
end
