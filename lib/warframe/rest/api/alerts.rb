# frozen_string_literal: true

require 'warframe/models/alerts'
require_relative '../utils'

module Warframe
  module REST
    module API
      # API endpoint for getting information on current Alerts data.
      #
      # {https://api.warframestat.us/pc/alerts Example Response}
      module Alerts
        include Warframe::REST::Utils

        # Gets the current Alerts data.
        # @return [Array<[Warframe::Models::Alerts]>]
        def alerts
          get('/alerts', Warframe::Models::Alerts)
        end
      end
    end
  end
end
