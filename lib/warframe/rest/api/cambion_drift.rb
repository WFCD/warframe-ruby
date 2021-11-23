# frozen_string_literal: true

require 'warframe/models/cambion_drift'
require_relative '../utils'

module Warframe
  module REST
    module API
      # API endpoint for getting information on current CambionDrift data.
      #
      # {https://api.warframestat.us/pc/cambionDrift Example Response}
      module CambionDrift
        include Warframe::REST::Utils

        # Gets the current cambionDrift Data.
        # @return Warframe::Models::CambionDrift
        def cambion_drift
          get('/cambionCycle', Warframe::Models::CambionDrift)
        end
      end
    end
  end
end
