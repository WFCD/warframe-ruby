# frozen_string_literal: true

require_relative 'api/nightwave'
require_relative 'api/news'
require_relative 'api/alerts'

module Warframe
  # A REST-ful API service, provided by https://api.warframestat.us
  module REST
    # The API Router for getting live data.
    #
    # Attempting to have every accessible route from {https://docs.warframestat.us Warframe Stat}.
    #
    # Module names are 'routes' to this API. See {Warframe::REST::API::Alerts Alerts} for example.
    module API
      include Warframe::REST::API::Nightwave
      include Warframe::REST::API::News
      include Warframe::REST::API::Alerts
    end
  end
end
