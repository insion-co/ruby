# frozen_string_literal: true

module InsionClient
  module Types
    class ErrorResponseError < Internal::Types::Model
      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
