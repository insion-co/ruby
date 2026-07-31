# frozen_string_literal: true

module Insion
  module Types
    class ModerateResponse < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { Insion::Types::ModerateResponseStatus }, optional: false, nullable: false

      field :moderation, -> { String }, optional: false, nullable: false

      field :user, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :flagged, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :category_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "categoryIds"
    end
  end
end
