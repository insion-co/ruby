# frozen_string_literal: true

module Insion
  module Types
    class CreateAppealResponse < Internal::Types::Model
      field :data, -> { Insion::Types::CreateAppealResponseData }, optional: false, nullable: false
    end
  end
end
