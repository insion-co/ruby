# frozen_string_literal: true

module Insion
  module Types
    class ListUsersResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[Insion::Types::User] }, optional: false, nullable: false

      field :has_more, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
