# frozen_string_literal: true

module InsionClient
  module Types
    class ErrorResponse < Internal::Types::Model
      field :error, -> { InsionClient::Types::ErrorResponseError }, optional: false, nullable: false
    end
  end
end
