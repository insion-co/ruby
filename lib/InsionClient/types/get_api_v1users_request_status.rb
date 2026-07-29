# frozen_string_literal: true

module InsionClient
  module Types
    module GetAPIV1UsersRequestStatus
      extend InsionClient::Internal::Types::Enum

      COMPLIANT = "Compliant"
      SUSPENDED = "Suspended"
      BANNED = "Banned"
    end
  end
end
