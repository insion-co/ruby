# frozen_string_literal: true

module Insion
  module Types
    class ContentExternalURLs < Internal::Types::Model
      field :text, -> { String }, optional: false, nullable: false

      field :image_urls, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "imageUrls"

      field :external_urls, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "externalUrls"
    end
  end
end
