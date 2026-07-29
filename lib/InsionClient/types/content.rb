# frozen_string_literal: true

module InsionClient
  module Types
    class Content < Internal::Types::Model
      extend InsionClient::Internal::Types::Union

      member -> { String }

      member -> { InsionClient::Types::ContentExternalURLs }
    end
  end
end
