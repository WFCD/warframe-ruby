# frozen_string_literal: true

require 'warframe/models/cambion_cycle'
require_relative '../utils'

module Warframe
  module REST
    module API
      # API endpoint for getting information on current CambionCycle data.
      #
      # {https://api.warframestat.us/pc/cambionCycle Example Response}
      module CambionCycle
        include Warframe::REST::Utils

        # Gets the current cambionCycle Data.
        # @return TODO: [Warframe::Models::CambionCycle] OR [Array<Warframe::Models::CambionCycle>]
        def cambion_cycle
          get('/cambionCycle', Warframe::Models::CambionCycle)
        end
      end
    end
  end
end
