# frozen_string_literal: true

module Insion
  module Types
    class SuccessResponse < Internal::Types::Model
      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
