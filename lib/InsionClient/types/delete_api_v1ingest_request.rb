# frozen_string_literal: true

module InsionClient
  module Types
    class DeleteAPIV1IngestRequest < Internal::Types::Model
      field :client_id, -> { String }, optional: false, nullable: false, api_name: "clientId"
    end
  end
end
