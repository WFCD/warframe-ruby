# frozen_string_literal: true

require 'warframe/models/nightwave'
require 'warframe/rest/utils'

module Warframe
  module REST
    module Nightwave
      include Warframe::REST::Utils
      def nightwave
        get('/nightwave', Warframe::Models::Nightwave)
      end
    end
  end
end
