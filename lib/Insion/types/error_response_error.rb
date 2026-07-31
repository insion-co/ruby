# frozen_string_literal: true

module Insion
  module Types
    class ErrorResponseError < Internal::Types::Model
      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
