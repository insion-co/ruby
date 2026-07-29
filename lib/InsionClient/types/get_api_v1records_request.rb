# frozen_string_literal: true

module InsionClient
  module Types
    class GetAPIV1RecordsRequest < Internal::Types::Model
      field :limit, -> { Integer }, optional: true, nullable: false

      field :starting_after, -> { String }, optional: true, nullable: false

      field :ending_before, -> { String }, optional: true, nullable: false

      field :client_id, -> { String }, optional: true, nullable: false, api_name: "clientId"

      field :user, -> { String }, optional: true, nullable: false

      field :entity, -> { String }, optional: true, nullable: false

      field :status, -> { InsionClient::Types::GetAPIV1RecordsRequestStatus }, optional: true, nullable: false
    end
  end
end
