# frozen_string_literal: true

module InsionClient
  module Internal
    module Types
      module Unknown
        include InsionClient::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
