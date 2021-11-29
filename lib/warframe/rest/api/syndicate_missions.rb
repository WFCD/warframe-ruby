# frozen_string_literal: true

require 'warframe/models/syndicate_mission'
require_relative '../utils'

module Warframe
  module REST
    module API
      # API endpoint for getting information on current SyndicateMission data.
      #
      # {https://api.warframestat.us/pc/syndicateMissions Example Response}
      module SyndicateMissions
        include Warframe::REST::Utils

        # Gets the current syndicateMissions Data.
        # @return [Array<Warframe::Models::SyndicateMission>]
        def syndicate_missions
          get('/syndicateMissions', Warframe::Models::SyndicateMission)
        end
      end
    end
  end
end
