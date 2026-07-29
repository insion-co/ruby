# frozen_string_literal: true

module InsionClient
  module Types
    class RecordInput < Internal::Types::Model
      field :client_id, -> { String }, optional: false, nullable: false, api_name: "clientId"

      field :client_url, -> { String }, optional: true, nullable: false, api_name: "clientUrl"

      field :name, -> { String }, optional: false, nullable: false

      field :entity, -> { String }, optional: false, nullable: false

      field :content, -> { InsionClient::Types::Content }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :user, -> { InsionClient::Types::UserInput }, optional: true, nullable: false
    end
  end
end
