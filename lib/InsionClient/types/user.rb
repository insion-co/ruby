# frozen_string_literal: true

module InsionClient
  module Types
    class User < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :client_id, -> { String }, optional: false, nullable: false, api_name: "clientId"

      field :client_url, -> { String }, optional: true, nullable: false, api_name: "clientUrl"

      field :email, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :username, -> { String }, optional: true, nullable: false

      field :protected, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :action_status, -> { InsionClient::Types::UserActionStatus }, optional: true, nullable: false, api_name: "actionStatus"

      field :action_status_created_at, -> { String }, optional: true, nullable: false, api_name: "actionStatusCreatedAt"

      field :appeal_url, -> { String }, optional: false, nullable: true, api_name: "appealUrl"
    end
  end
end
