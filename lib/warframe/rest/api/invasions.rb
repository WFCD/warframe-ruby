# frozen_string_literal: true

require 'warframe/models/invasions'
require_relative '../utils'

module Warframe
  module REST
    module API
      # API endpoint for getting information on current Invasions data.
      #
      # {https://api.warframestat.us/pc/invasions Example Response}
      module Invasions
        include Warframe::REST::Utils

        # Gets the current Invasion data
        # @return [Array<[Warframe::Models::Invasions]>]
        def invasions
          get('/invasions', Warframe::Models::Invasions)
        end
      end
    end
  end
end
