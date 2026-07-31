# frozen_string_literal: true

module Insion
  module Types
    class GetAPIV1RecordsRecordIDRequest < Internal::Types::Model
      field :record_id, -> { String }, optional: false, nullable: false, api_name: "recordId"
    end
  end
end
