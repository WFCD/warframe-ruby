# frozen_string_literal: true

require 'warframe/models/sortie'
require_relative '../utils'

module Warframe
  module REST
    module API
      # API endpoint for getting information on current Sortie data.
      #
      # {https://api.warframestat.us/pc/sortie Example Response}
      module Sortie
        include Warframe::REST::Utils

        # Gets the current sortie missions.
        # @return [Array<Warframe::Models::Sortie>]
        def sortie
          get('/sortie', Warframe::Models::Sortie)
        end
      end
    end
  end
end
