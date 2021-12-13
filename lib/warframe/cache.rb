# frozen_string_literal: true

module Warframe
  # @private
  class Cache
    # Expiration time in seconds
    EXPIRATION_TIME = 5
    attr_accessor :data

    def initialize
      @data = {}
    end

    def find_in_cache(key)
      if exist?(key) && !expired(key)
        @data[key]
      else
        nil
      end
      # if cache[k].exist? && cache[k] isnt expired return cache[k]
      # else return nil
    end

    def add_to_cache(key, val)
      @data[key] = { time: Time.now, result: val }
      val
    end

    private

    def exist?(key)
      !!@data[key].nil?
    end

    def expired?(key)
      Time.now - data[key][:time] > EXPIRATION_TIME
    end


  end
end