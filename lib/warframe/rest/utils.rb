# frozen_string_literal: true

require 'warframe/rest/request'

module Warframe
  module REST
    module Utils
      private

      def get(path, klass, options = {})
        Warframe::REST::Request.new(@client || self, path, klass, options).send
      end
    end
  end
end
