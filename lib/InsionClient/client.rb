# frozen_string_literal: true

module InsionClient
  class Client
    # Create or update a record and return its moderation result immediately.
    #
    # @param request_options [Hash]
    # @param params [InsionClient::Types::ModerateRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @return [InsionClient::Types::ModerateResponse]
    def moderate_a_record(request_options: {}, **params)
      params = InsionClient::Internal::Types::Utils.normalize_keys(params)
      request = InsionClient::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "api/v1/moderate",
        body: InsionClient::Types::ModerateRequest.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise InsionClient::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        InsionClient::Types::ModerateResponse.load(response.body)
      else
        error_class = InsionClient::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # Create or update a content record for asynchronous moderation. Results are delivered through webhook events when
    # moderation is performed.
    #
    # @param request_options [Hash]
    # @param params [InsionClient::Types::IngestRecordRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @return [InsionClient::Types::IngestRecordResponse]
    def ingest_a_record(request_options: {}, **params)
      params = InsionClient::Internal::Types::Utils.normalize_keys(params)
      request = InsionClient::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "api/v1/ingest",
        body: InsionClient::Types::RecordInput.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise InsionClient::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        InsionClient::Types::IngestRecordResponse.load(response.body)
      else
        error_class = InsionClient::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # Remove a record from the moderation system by its client ID.
    #
    # @param request_options [Hash]
    # @param params [InsionClient::Types::DeleteAPIV1IngestRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @return [InsionClient::Types::SuccessResponse]
    def delete_a_record(request_options: {}, **params)
      params = InsionClient::Internal::Types::Utils.normalize_keys(params)
      request = InsionClient::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "DELETE",
        path: "api/v1/ingest",
        body: InsionClient::Types::DeleteAPIV1IngestRequest.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise InsionClient::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        InsionClient::Types::SuccessResponse.load(response.body)
      else
        error_class = InsionClient::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # Create or update a user without ingesting a record.
    #
    # @param request_options [Hash]
    # @param params [InsionClient::Types::UserInput]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    #
    # @return [InsionClient::Types::IngestUserResponse]
    def ingest_a_user(request_options: {}, **params)
      params = InsionClient::Internal::Types::Utils.normalize_keys(params)
      request = InsionClient::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "api/v1/ingest/user",
        body: InsionClient::Types::UserInput.new(params).to_h,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise InsionClient::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        InsionClient::Types::IngestUserResponse.load(response.body)
      else
        error_class = InsionClient::Errors::ResponseError.subclass_for_code(code)
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
    # @option params [InsionClient::Types::GetAPIV1RecordsRequestStatus, nil] :status
    #
    # @return [InsionClient::Types::ListRecordsResponse]
    def list_records(request_options: {}, **params)
      params = InsionClient::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["limit"] = params[:limit] if params.key?(:limit)
      query_params["starting_after"] = params[:starting_after] if params.key?(:starting_after)
      query_params["ending_before"] = params[:ending_before] if params.key?(:ending_before)
      query_params["clientId"] = params[:client_id] if params.key?(:client_id)
      query_params["user"] = params[:user] if params.key?(:user)
      query_params["entity"] = params[:entity] if params.key?(:entity)
      query_params["status"] = params[:status] if params.key?(:status)

      request = InsionClient::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "api/v1/records",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise InsionClient::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        InsionClient::Types::ListRecordsResponse.load(response.body)
      else
        error_class = InsionClient::Errors::ResponseError.subclass_for_code(code)
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
    # @return [InsionClient::Types::RecordResponse]
    def retrieve_a_record(request_options: {}, **params)
      params = InsionClient::Internal::Types::Utils.normalize_keys(params)
      request = InsionClient::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "api/v1/records/#{URI.encode_uri_component(params[:record_id].to_s)}",
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise InsionClient::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        InsionClient::Types::RecordResponse.load(response.body)
      else
        error_class = InsionClient::Errors::ResponseError.subclass_for_code(code)
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
    # @option params [InsionClient::Types::GetAPIV1UsersRequestStatus, nil] :status
    # @option params [String, nil] :user
    #
    # @return [InsionClient::Types::ListUsersResponse]
    def list_users(request_options: {}, **params)
      params = InsionClient::Internal::Types::Utils.normalize_keys(params)
      query_params = {}
      query_params["limit"] = params[:limit] if params.key?(:limit)
      query_params["starting_after"] = params[:starting_after] if params.key?(:starting_after)
      query_params["ending_before"] = params[:ending_before] if params.key?(:ending_before)
      query_params["clientId"] = params[:client_id] if params.key?(:client_id)
      query_params["email"] = params[:email] if params.key?(:email)
      query_params["status"] = params[:status] if params.key?(:status)
      query_params["user"] = params[:user] if params.key?(:user)

      request = InsionClient::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "api/v1/users",
        query: query_params,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise InsionClient::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        InsionClient::Types::ListUsersResponse.load(response.body)
      else
        error_class = InsionClient::Errors::ResponseError.subclass_for_code(code)
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
    # @return [InsionClient::Types::UserResponse]
    def retrieve_a_user(request_options: {}, **params)
      params = InsionClient::Internal::Types::Utils.normalize_keys(params)
      request = InsionClient::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "GET",
        path: "api/v1/users/#{URI.encode_uri_component(params[:user_id].to_s)}",
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise InsionClient::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        InsionClient::Types::UserResponse.load(response.body)
      else
        error_class = InsionClient::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # Create an appeal for a suspended user. Appeals must be enabled for the organization.
    #
    # @param request_options [Hash]
    # @param params [InsionClient::Types::PostAPIV1UsersUserIDCreateAppealRequest]
    # @option request_options [String] :base_url
    # @option request_options [Hash{String => Object}] :additional_headers
    # @option request_options [Hash{String => Object}] :additional_query_parameters
    # @option request_options [Hash{String => Object}] :additional_body_parameters
    # @option request_options [Integer] :timeout_in_seconds
    # @option params [String] :user_id
    #
    # @return [InsionClient::Types::CreateAppealResponse]
    def create_an_appeal(request_options: {}, **params)
      params = InsionClient::Internal::Types::Utils.normalize_keys(params)
      request_data = InsionClient::Types::PostAPIV1UsersUserIDCreateAppealRequest.new(params).to_h
      non_body_param_names = %w[userId]
      body = request_data.except(*non_body_param_names)

      request = InsionClient::Internal::JSON::Request.new(
        base_url: request_options[:base_url],
        method: "POST",
        path: "api/v1/users/#{URI.encode_uri_component(params[:user_id].to_s)}/create_appeal",
        body: body,
        request_options: request_options
      )
      begin
        response = @client.send(request)
      rescue Net::HTTPRequestTimeout
        raise InsionClient::Errors::TimeoutError
      end
      code = response.code.to_i
      if code.between?(200, 299)
        InsionClient::Types::CreateAppealResponse.load(response.body)
      else
        error_class = InsionClient::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end

    # @param token [String]
    # @param base_url [String, nil]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(token:, base_url: nil, max_retries: 2)
      @raw_client = InsionClient::Internal::Http::RawClient.new(
        base_url: base_url || InsionClient::Environment::DEFAULT,
        headers: {
          "X-Fern-Language" => "Ruby",
          Authorization: "Bearer #{token}"
        },
        max_retries: max_retries
      )
    end
  end
end
