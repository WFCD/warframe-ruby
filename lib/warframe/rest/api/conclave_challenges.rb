# frozen_string_literal: true

require 'warframe/models/conclave_challenge'
require_relative '../utils'

module Warframe
  module REST
    module API
      # API endpoint for getting information on current ConclaveChallenge data.
      #
      # {https://api.warframestat.us/pc/conclaveChallenges> Example Response}
      module ConclaveChallenges
        include Warframe::REST::Utils

        # Gets the current conclave challenges.
        # @return [Array<Warframe::Models::ConclaveChallenge>]
        def conclave_challenges
          get('/conclaveChallenges', Warframe::Models::ConclaveChallenge)
        end
      end
    end
  end
end
