# frozen_string_literal: true

require 'warframe/models/nightwave'
require 'warframe/rest/utils'

module Warframe
  module REST
    module API
      # https://docs.warframestat.us/#tag/Worldstate/paths/~1{platform}~1nightwave/get
      module Nightwave
        include Warframe::REST::Utils

        def nightwave
          get('/nightwave', Warframe::Models::Nightwave)
        end
      end
    end
  end
end
