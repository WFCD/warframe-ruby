# frozen_string_literal: true

module Warframe
  module Models
    # @private
    class Cache
      @@CACHE = {}

      def self.new_entry(path, content = nil, seconds = 300)
        expiration = Time.now.to_i + seconds
        @@CACHE = { path: path, expiration: expiration, content: content }
      end

      def self.cache
        @@CACHE
      end

      def self.expired?
        cache[:expiration] - Time.now.to_i <= 0
      end

      def self.cache_content
        cache[:content]
      end

      def self.cache_exist?(path)
        cache[:path].eql?(path)
      end

      def self.cache_is_readable?(path)
        cache_exist?(path) && !expired?
      end
    end
  end
end
