# frozen_string_literal: true

module Insion
  module Types
    class RecordResponse < Internal::Types::Model
      field :data, -> { Insion::Types::Record }, optional: false, nullable: false
    end
  end
end
