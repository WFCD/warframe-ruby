# frozen_string_literal: true

require 'warframe/models/global_upgrades'
require_relative '../utils'

module Warframe
  module REST
    module API
      # API endpoint for getting information on current Global Upgrades data.
      #
      # {https://api.warframestat.us/pc/globalUpgrades Example Response}
      module GlobalUpgrades
        include Warframe::REST::Utils

        # Gets the current Global Upgrades data.
        # @return [Array<[Warframe::Models::GlobalUpgrades]>]
        def global_upgrades
          get('/globalUpgrades', Warframe::Models::GlobalUpgrades)
        end
      end
    end
  end
end
