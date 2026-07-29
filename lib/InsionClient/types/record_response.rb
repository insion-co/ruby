# frozen_string_literal: true

module InsionClient
  module Types
    class RecordResponse < Internal::Types::Model
      field :data, -> { InsionClient::Types::Record }, optional: false, nullable: false
    end
  end
end
