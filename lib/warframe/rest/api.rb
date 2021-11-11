# frozen_string_literal: true

require_relative 'api/nightwave'
require_relative 'api/news'

module Warframe
  module REST
    module API
      include Warframe::REST::API::Nightwave
      include Warframe::REST::API::News
    end
  end
end
