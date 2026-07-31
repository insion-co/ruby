# frozen_string_literal: true

module Insion
  module Types
    class IngestRecordResponse < Internal::Types::Model
      field :message, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :moderation, -> { String }, optional: false, nullable: true

      field :user, -> { String }, optional: true, nullable: false
    end
  end
end
