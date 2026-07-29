# frozen_string_literal: true

module InsionClient
  module Types
    class CreateAppealResponse < Internal::Types::Model
      field :data, -> { InsionClient::Types::CreateAppealResponseData }, optional: false, nullable: false
    end
  end
end
