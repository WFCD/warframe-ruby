# frozen_string_literal: true

module Warframe
  module Models
    module Common
      # Includes the translations attribute.
      module Translations
        # The message that can be translated.
        # @return [String]
        attr_reader :message

        # Available translations for the requested data.
        # @return [OpenStruct]
        attr_reader :translations
      end
    end
  end
end
