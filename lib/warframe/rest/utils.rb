# frozen_string_literal: true

require 'warframe/rest/request'

module Warframe
  module REST
    # REST Utilities, home of the #get method
    module Utils
      private

      # @param path [String]
      # @param klass [Warframe::Models]
      def get(path, klass)
        Warframe::REST::Request.new(@client || self, path, klass).send
      end
    end
  end
end
