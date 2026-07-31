# frozen_string_literal: true

module Insion
  module Types
    class PostAPIV1UsersUserIDCreateAppealRequest < Internal::Types::Model
      field :user_id, -> { String }, optional: false, nullable: false, api_name: "userId"

      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
