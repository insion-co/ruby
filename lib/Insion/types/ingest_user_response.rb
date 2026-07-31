# frozen_string_literal: true

module Insion
  module Types
    class IngestUserResponse < Internal::Types::Model
      field :message, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
