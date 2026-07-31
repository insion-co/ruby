# frozen_string_literal: true

module Insion
  module Internal
    module Types
      module Unknown
        include Insion::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
