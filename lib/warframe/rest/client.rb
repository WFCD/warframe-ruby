# frozen_string_literal: true

require 'warframe/client_wrapper'
require 'warframe/rest/api'

module Warframe
  module REST
    class Client < Warframe::ClientWrapper
      include Warframe::REST::API
    end
  end
end
