# frozen_string_literal: true

module InsionClient
  module Types
    class SuccessResponse < Internal::Types::Model
      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
