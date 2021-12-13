# frozen_string_literal: true

module Warframe
  # @private
  class Cache
    # Expiration time in seconds
    EXPIRATION_TIME = 5 * 60
    attr_accessor :cache

    def initialize
      @cache = {}
    end

    def get_from_cache(key)
      cache[key][:result]
    end

    def find_in_cache(key)
      cache[key][:result] if exist?(key) && !expired?(key)
    end

    def add_to_cache(key, val, time = EXPIRATION_TIME)
      cache[key] = { time: Time.now.to_i + time, result: val }
      val
    end

    private

    def exist?(key)
      !cache[key].nil?
    end

    def expired?(key)
      cache[key][:time] - Time.now.to_i <= 0
    end
  end
end
