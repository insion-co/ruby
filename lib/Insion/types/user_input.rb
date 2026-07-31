# frozen_string_literal: true

module Insion
  module Types
    class UserInput < Internal::Types::Model
      field :client_id, -> { String }, optional: false, nullable: false, api_name: "clientId"

      field :client_url, -> { String }, optional: true, nullable: false, api_name: "clientUrl"

      field :stripe_account_id, -> { String }, optional: true, nullable: false, api_name: "stripeAccountId"

      field :email, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :username, -> { String }, optional: true, nullable: false

      field :protected, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
