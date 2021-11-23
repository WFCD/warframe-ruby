# frozen_string_literal: true

require_relative 'api/alerts'
require_relative 'api/cambion_drift'
require_relative 'api/cetus'
require_relative 'api/conclave_challenges'
require_relative 'api/global_upgrades'
require_relative 'api/invasions'
require_relative 'api/news'
require_relative 'api/nightwave'
require_relative 'api/sortie'
require_relative 'api/steel_path'
require_relative 'api/syndicate_missions'

module Warframe
  # A REST-ful API service, provided by https://api.warframestat.us
  module REST
    # The API Router for getting live data.
    #
    # Attempting to have every accessible route from {https://docs.warframestat.us Warframe Stat}.
    #
    # Module names are 'routes' to this API. See {Warframe::REST::API::Alerts Alerts} for example.
    module API
      include Warframe::REST::API::Alerts
      include Warframe::REST::API::CambionDrift
      include Warframe::REST::API::Cetus
      include Warframe::REST::API::ConclaveChallenges
      include Warframe::REST::API::GlobalUpgrades
      include Warframe::REST::API::Invasions
      include Warframe::REST::API::News
      include Warframe::REST::API::Nightwave
      include Warframe::REST::API::Sortie
      include Warframe::REST::API::SteelPath
      include Warframe::REST::API::SyndicateMissions
    end
  end
end
