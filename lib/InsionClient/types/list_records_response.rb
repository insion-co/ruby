# frozen_string_literal: true

module InsionClient
  module Types
    class ListRecordsResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[InsionClient::Types::Record] }, optional: false, nullable: false

      field :has_more, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
