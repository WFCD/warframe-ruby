# frozen_string_literal: true

require 'warframe/models/nightwave'
require_relative '../utils'

module Warframe
  module REST
    module API
      # API endpoint for getting information from the Nightwave route.
      # {https://api.warframestat.us/pc/nightwave Example Response}
      module Nightwave
        include Warframe::REST::Utils

        # Gets the current Nightwave Mission data
        # @return [Warframe::Models::Nightwave]
        def nightwave
          get('/nightwave', Warframe::Models::Nightwave)
        end
      end
    end
  end
end
