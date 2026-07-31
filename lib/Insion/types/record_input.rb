# frozen_string_literal: true

module Insion
  module Types
    class RecordInput < Internal::Types::Model
      field :client_id, -> { String }, optional: false, nullable: false, api_name: "clientId"

      field :client_url, -> { String }, optional: true, nullable: false, api_name: "clientUrl"

      field :name, -> { String }, optional: false, nullable: false

      field :entity, -> { String }, optional: false, nullable: false

      field :content, -> { Insion::Types::Content }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :user, -> { Insion::Types::UserInput }, optional: true, nullable: false
    end
  end
end
