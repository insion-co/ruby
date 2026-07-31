# frozen_string_literal: true

module Insion
  module Types
    class UserResponse < Internal::Types::Model
      field :data, -> { Insion::Types::User }, optional: false, nullable: false
    end
  end
end
