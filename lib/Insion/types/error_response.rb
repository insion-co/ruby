# frozen_string_literal: true

module Insion
  module Types
    class ErrorResponse < Internal::Types::Model
      field :error, -> { Insion::Types::ErrorResponseError }, optional: false, nullable: false
    end
  end
end
