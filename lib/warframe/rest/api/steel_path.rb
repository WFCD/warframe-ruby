# frozen_string_literal: true

require 'warframe/models/steel_path'
require_relative '../utils'

module Warframe
  module REST
    module API
      # API endpoint for getting information on current SteelPath data.
      #
      # {https://api.warframestat.us/pc/steelPath> Example Response}
      module SteelPath
        include Warframe::REST::Utils

        # Steel Path data
        # @return [Array<Warframe::Models::SteelPath>]
        def steel_path
          get('/steelPath', Warframe::Models::SteelPath)
        end
      end
    end
  end
end
