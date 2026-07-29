# frozen_string_literal: true

module InsionClient
  module Types
    class UserResponse < Internal::Types::Model
      field :data, -> { InsionClient::Types::User }, optional: false, nullable: false
    end
  end
end
