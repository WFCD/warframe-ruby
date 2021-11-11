# frozen_string_literal: true

require_relative 'api/nightwave'
require_relative 'api/news'
require_relative 'api/alerts'

module Warframe
  module REST
    module API
      include Warframe::REST::API::Nightwave
      include Warframe::REST::API::News
      include Warframe::REST::API::Alerts
    end
  end
end
