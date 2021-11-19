# frozen_string_literal: true

module Warframe
  module Models
    module Attributes
      # Includes the desc attribute
      module Desc
        # The description of the data requested
        # @return [String]
        attr_reader :desc
      end
      # Includes the description attribute.
      module Description
        # The description of the data requested.
        # @return [String]
        attr_reader :description
      end
    end
  end
end
