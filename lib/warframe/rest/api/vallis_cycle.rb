# frozen_string_literal: true

require 'warframe/models/vallis_cycle'
require_relative '../utils'

module Warframe
  module REST
    module API
      # API endpoint for getting information on current VallisCycle data.
      #
      # {https://api.warframestat.us/pc/vallisCycle Example Response}
      module VallisCycle
        include Warframe::REST::Utils

        # Gets the current vallisCycle Data.
        # @return [Warframe::Models::VallisCycle]
        def vallis_cycle
          get('/vallisCycle', Warframe::Models::VallisCycle)
        end
      end
    end
  end
end
