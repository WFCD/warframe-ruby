# frozen_string_literal: true

require 'warframe/models/cetus'
require_relative '../utils'

module Warframe
  module REST
    module API
      # API endpoint for getting information on current Cetus data.
      #
      # {https://api.warframestat.us/pc/cetusCycle Example Response}
      module Cetus
        include Warframe::REST::Utils

        # Gets the current cetusCycle Data.
        # @return [Warframe::Models::Cetus]
        def cetus
          get('/cetusCycle', Warframe::Models::Cetus)
        end
      end
    end
  end
end
