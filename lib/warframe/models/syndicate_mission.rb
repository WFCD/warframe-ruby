# frozen_string_literal: true

require_relative './base'
require_relative 'attributes/eta'
require_relative 'attributes/id'
require_relative 'attributes/active'
require_relative 'attributes/start_string'

module Warframe
  module Models
    # Model for SyndicateMission Data {https://api.warframestat.us/pc/syndicateMissions> /:platform/syndicateMissions}
    class SyndicateMission < Warframe::Models::Base
      include Warframe::Models::Attributes::ETA
      include Warframe::Models::Attributes::ID
      include Warframe::Models::Attributes::ActiveBoth
      include Warframe::Models::Attributes::StartString

      # 'Jobs' or challenges currently available.
      # @return [Array<OpenStruct>]
      attr_reader :jobs

      # The syndicate you will be fighting.
      # @return [String]
      attr_reader :syndicate

      # The nodes that this mission is available on.
      # @return [Array]
      attr_reader :nodes
    end
  end
end
