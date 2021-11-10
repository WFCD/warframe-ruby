# frozen_string_literal: true

require 'warframe/models/base'

module Warframe
  module Models
    # Nightwave Model
    class Nightwave < Warframe::Models::Base
      attr_accessor :id, :activation, :expiry, :reward_types, :season,
                    :tag, :phase, :possible_challenges, :active_challenges
      # Implement DRY-Struct
      # attribute :id, Types::String
      # attribute :activation, Types::Date
      # attribute :expiry, Types::Date
      # attribute :rewardTypes, Types::Array
      # attribute :season, Types::Integer
      # attribute :tag, Types::String
      # attribute :phase, Types::Integer
      #
      # # Possible Challenges Currently Active
      # attribute :possibleChallenges, Types::Array do
      #   attribute :id, Types::String
      #   attribute :activation, Types::Date
      #   attribute :expiry, Types::Date
      #   attribute :isDaily, Types::Bool
      #   attribute :isElite, Types::Bool
      #   attribute :desc, Types::String
      #   attribute :reputation, Types::Integer
      # end
      #
      # attribute :activeChallenges, Types::Array do
      #   attribute :id, Types::String
      #   attribute :activation, Types::Date
      #   attribute :expiry, Types::Date
      #   attribute :isDaily, Types::Bool
      #   attribute :isElite, Types::Bool
      #   attribute :desc, Types::String
      #   attribute :reputation, Types::Integer
      # end
    end
  end
end
