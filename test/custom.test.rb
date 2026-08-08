# frozen_string_literal: true

# This is a custom test file, if you wish to add more tests
# to your SDK.
# Be sure to mark this file in `.fernignore`.
#
# If you include example requests/responses in your fern definition,
# you will have tests automatically generated for you.

require "minitest/autorun"
require "test_helper"

# This test is run via command line: rake customtest
describe "Insion generator regressions" do
  it "initializes the transport used by endpoint methods" do
    client = Insion::Client.new(token: "test-token")

    assert_kind_of Insion::Internal::Http::RawClient, client.instance_variable_get(:@client)
    refute client.instance_variable_defined?(:@raw_client)
  end

  it "preserves false boolean response values" do
    response = Insion::Types::ListRecordsResponse.load('{"data":[],"has_more":false}')

    refute response.has_more
    refute response.to_h["has_more"]
  end

  it "preserves true boolean response values" do
    response = Insion::Types::ListRecordsResponse.load('{"data":[],"has_more":true}')

    assert response.has_more
    assert response.to_h["has_more"]
  end
end
