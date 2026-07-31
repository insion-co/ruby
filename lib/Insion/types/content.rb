# frozen_string_literal: true

module Insion
  module Types
    class Content < Internal::Types::Model
      extend Insion::Internal::Types::Union

      member -> { String }

      member -> { Insion::Types::ContentExternalURLs }
    end
  end
end
