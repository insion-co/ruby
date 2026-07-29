# frozen_string_literal: true

module InsionClient
  module Types
    class GetAPIV1UsersUserIDRequest < Internal::Types::Model
      field :user_id, -> { String }, optional: false, nullable: false, api_name: "userId"
    end
  end
end
