# frozen_string_literal: true

require 'warframe/models/news'
require 'warframe/rest/utils'

module Warframe
  module REST
    module API
      # https://docs.warframestat.us/#tag/Worldstate/paths/~1{platform}~1news/get
      module News
        def news
          get('/news', Warframe::Models::News)
        end
      end
    end
  end
end
