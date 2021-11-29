# frozen_string_literal: true

require_relative './base'
require_relative 'attributes/expiry'
require_relative 'attributes/eta'
require_relative 'attributes/description'
require_relative 'attributes/id'
require_relative 'attributes/active'

module Warframe
  module Models
    # Conclave Challenges data model.
    # {https://api.warframestat.us/pc/conclaveChallenges /:platform/conclaveChallenges}
    class ConclaveChallenge < Warframe::Models::Base
      include Warframe::Models::Attributes::Expiration
      include Warframe::Models::Attributes::ETA
      include Warframe::Models::Attributes::Description
      include Warframe::Models::Attributes::ID
      include Warframe::Models::Attributes::Activation

      # The mode of the conclave.
      # @return [String]
      attr_reader :mode

      # The amount of challenges that must be completed.
      # @return [Integer]
      attr_reader :amount

      # The amount of standing you will gain upon completion.
      # @return [Integer]
      attr_reader :standing

      # The title of the challenge.
      # @return [String]
      attr_reader :title

      # The category of mission, usually 'weekly' / 'daily'.
      # @return [String]
      attr_reader :category

      # Whether or not this is a daily mission.
      # @return [Boolean]
      attr_reader :daily

      # The challenge information in a one line string.
      # @return [String]
      attr_reader :as_string

      # Whether or not this is a root challenge.
      # @return [Boolean]
      attr_reader :root_challenge
    end
  end
end
