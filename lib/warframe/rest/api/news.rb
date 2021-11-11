# frozen_string_literal: true

require 'warframe/models/news'
require 'warframe/rest/utils'

module Warframe
  module REST
    module API
      # API endpoint for getting information from the News route.
      # {https://api.warframestat.us/pc/news Example Response}
      module News

        # Gets the current news
        # @return [Array<Warframe::Models::News>]
        def news
          get('/news', Warframe::Models::News)
        end
      end
    end
  end
end
