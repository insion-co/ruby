# frozen_string_literal: true

module Insion
  class Client
    # Create or update a record and return its moderation result immediately.
    #
    # @param request_options [Hash]
    # @param params [Insion::Types::ModerateRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @example
    #   client.moderate_a_record(
    #     client_id: "clientId",
    #     name: "name",
    #     entity: "entity",
    #     content: "content"
    #   )
    #
    # @return [Insion::Types::ModerateResponse]
    def moderate_a_record(request_options: {}, **params)
      params = Insion::Internal::Types::Utils.normalize_keys(params)
      request = Insion::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "api/v1/moderate",
        body: Insion::Types::ModerateRequest.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Insion::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Insion::Types::ModerateResponse.load(response.body)
      else
        error_class = Insion::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # Create or update a content record for asynchronous moderation. Results are delivered through webhook events when
    # moderation is performed.
    #
    # @param request_options [Hash]
    # @param params [Insion::Types::IngestRecordRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @example
    #   client.ingest_a_record(
    #     client_id: "clientId",
    #     name: "name",
    #     entity: "entity",
    #     content: "content"
    #   )
    #
    # @return [Insion::Types::IngestRecordResponse]
    def ingest_a_record(request_options: {}, **params)
      params = Insion::Internal::Types::Utils.normalize_keys(params)
      request = Insion::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "api/v1/ingest",
        body: Insion::Types::RecordInput.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Insion::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Insion::Types::IngestRecordResponse.load(response.body)
      else
        error_class = Insion::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # Remove a record from the moderation system by its client ID.
    #
    # @param request_options [Hash]
    # @param params [Insion::Types::DeleteAPIV1IngestRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @example
    #   client.delete_a_record(client_id: "clientId")
    #
    # @return [Insion::Types::SuccessResponse]
    def delete_a_record(request_options: {}, **params)
      params = Insion::Internal::Types::Utils.normalize_keys(params)
      request = Insion::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "DELETE",
        path: "api/v1/ingest",
        body: Insion::Types::DeleteAPIV1IngestRequest.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Insion::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Insion::Types::SuccessResponse.load(response.body)
      else
        error_class = Insion::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # Create or update a user without ingesting a record.
    #
    # @param request_options [Hash]
    # @param params [Insion::Types::UserInput]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @example
    #   client.ingest_a_user(client_id: "clientId")
    #
    # @return [Insion::Types::IngestUserResponse]
    def ingest_a_user(request_options: {}, **params)
      params = Insion::Internal::Types::Utils.normalize_keys(params)
      request = Insion::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "api/v1/ingest/user",
        body: Insion::Types::UserInput.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Insion::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Insion::Types::IngestUserResponse.load(response.body)
      else
        error_class = Insion::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # List the records belonging to the authenticated organization.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [Integer, nil] :limit
    # @option params [String, nil] :starting_after
    # @option params [String, nil] :ending_before
    # @option params [String, nil] :client_id
    # @option params [String, nil] :user
    # @option params [String, nil] :entity
    # @option params [Insion::Types::GetAPIV1RecordsRequestStatus, nil] :status
    #
    # @example
    #   client.list_records
    #
    # @return [Insion::Types::ListRecordsResponse]
    def list_records(request_options: {}, **params)
      params = Insion::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["limit"] = params[:limit] if params.key?(:limit)
      query_params["starting_after"] = params[:starting_after] if params.key?(:starting_after)
      query_params["ending_before"] = params[:ending_before] if params.key?(:ending_before)
      query_params["clientId"] = params[:client_id] if params.key?(:client_id)
      query_params["user"] = params[:user] if params.key?(:user)
      query_params["entity"] = params[:entity] if params.key?(:entity)
      query_params["status"] = params[:status] if params.key?(:status)

      request = Insion::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "api/v1/records",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Insion::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Insion::Types::ListRecordsResponse.load(response.body)
      else
        error_class = Insion::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # Retrieve one record by its Insion record ID.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :record_id
    #
    # @example
    #   client.retrieve_a_record(record_id: "recordId")
    #
    # @return [Insion::Types::RecordResponse]
    def retrieve_a_record(request_options: {}, **params)
      params = Insion::Internal::Types::Utils.normalize_keys(params)
      request = Insion::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "api/v1/records/#{URI.encode_uri_component(params[:record_id].to_s)}",
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Insion::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Insion::Types::RecordResponse.load(response.body)
      else
        error_class = Insion::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # List the users belonging to the authenticated organization.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [Integer, nil] :limit
    # @option params [String, nil] :starting_after
    # @option params [String, nil] :ending_before
    # @option params [String, nil] :client_id
    # @option params [String, nil] :email
    # @option params [Insion::Types::GetAPIV1UsersRequestStatus, nil] :status
    # @option params [String, nil] :user
    #
    # @example
    #   client.list_users
    #
    # @return [Insion::Types::ListUsersResponse]
    def list_users(request_options: {}, **params)
      params = Insion::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["limit"] = params[:limit] if params.key?(:limit)
      query_params["starting_after"] = params[:starting_after] if params.key?(:starting_after)
      query_params["ending_before"] = params[:ending_before] if params.key?(:ending_before)
      query_params["clientId"] = params[:client_id] if params.key?(:client_id)
      query_params["email"] = params[:email] if params.key?(:email)
      query_params["status"] = params[:status] if params.key?(:status)
      query_params["user"] = params[:user] if params.key?(:user)

      request = Insion::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "api/v1/users",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Insion::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Insion::Types::ListUsersResponse.load(response.body)
      else
        error_class = Insion::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # Retrieve one user by its Insion user ID.
    #
    # @param request_options [Hash]
    # @param params [Hash]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :user_id
    #
    # @example
    #   client.retrieve_a_user(user_id: "userId")
    #
    # @return [Insion::Types::UserResponse]
    def retrieve_a_user(request_options: {}, **params)
      params = Insion::Internal::Types::Utils.normalize_keys(params)
      request = Insion::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "api/v1/users/#{URI.encode_uri_component(params[:user_id].to_s)}",
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Insion::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Insion::Types::UserResponse.load(response.body)
      else
        error_class = Insion::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # Create an appeal for a suspended user. Appeals must be enabled for the organization.
    #
    # @param request_options [Hash]
    # @param params [Insion::Types::PostAPIV1UsersUserIDCreateAppealRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :user_id
    #
    # @example
    #   client.create_an_appeal(
    #     user_id: "userId",
    #     text: "text"
    #   )
    #
    # @return [Insion::Types::CreateAppealResponse]
    def create_an_appeal(request_options: {}, **params)
      params = Insion::Internal::Types::Utils.normalize_keys(params)
      request_data = Insion::Types::PostAPIV1UsersUserIDCreateAppealRequest.new(params).to_h
      non_body_param_names = %w[userId]
      body = request_data.except(*non_body_param_names)

      request = Insion::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "api/v1/users/#{URI.encode_uri_component(params[:user_id].to_s)}/create_appeal",
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise Insion::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        Insion::Types::CreateAppealResponse.load(response.body)
      else
        error_class = Insion::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # @param token [String]
    # @param base_url [String, nil]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(token:, base_url: nil, max_retries: 2)
      @client = Insion::Internal::Http::RawClient.new(
        base_url: base_url || Insion::Environment::DEFAULT,
        headers: {
          Authorization: "Bearer #{token}"
        },
        max_retries: max_retries
      )
    end
  end
end
