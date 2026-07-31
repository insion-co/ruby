# frozen_string_literal: true

module Insion
  module Types
    class Record < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :client_id, -> { String }, optional: false, nullable: false, api_name: "clientId"

      field :client_url, -> { String }, optional: true, nullable: false, api_name: "clientUrl"

      field :name, -> { String }, optional: false, nullable: false

      field :entity, -> { String }, optional: false, nullable: false

      field :protected, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :moderation_status, -> { Insion::Types::RecordModerationStatus }, optional: true, nullable: false, api_name: "moderationStatus"

      field :moderation_status_created_at, -> { String }, optional: true, nullable: false, api_name: "moderationStatusCreatedAt"

      field :moderation_pending, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "moderationPending"

      field :moderation_pending_created_at, -> { String }, optional: true, nullable: false, api_name: "moderationPendingCreatedAt"

      field :user, -> { String }, optional: true, nullable: false
    end
  end
end
