# frozen_string_literal: true

module Insion
  module Types
    class GetAPIV1UsersRequest < Internal::Types::Model
      field :limit, -> { Integer }, optional: true, nullable: false

      field :starting_after, -> { String }, optional: true, nullable: false

      field :ending_before, -> { String }, optional: true, nullable: false

      field :client_id, -> { String }, optional: true, nullable: false, api_name: "clientId"

      field :email, -> { String }, optional: true, nullable: false

      field :status, -> { Insion::Types::GetAPIV1UsersRequestStatus }, optional: true, nullable: false

      field :user, -> { String }, optional: true, nullable: false
    end
  end
end
