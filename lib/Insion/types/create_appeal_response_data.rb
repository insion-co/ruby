# frozen_string_literal: true

module Insion
  module Types
    class CreateAppealResponseData < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :action_status, -> { Insion::Types::CreateAppealResponseDataActionStatus }, optional: false, nullable: true, api_name: "actionStatus"

      field :action_status_created_at, -> { String }, optional: false, nullable: true, api_name: "actionStatusCreatedAt"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :appeal_url, -> { String }, optional: false, nullable: true, api_name: "appealUrl"
    end
  end
end
