require 'rest-client'
require 'customer_service_client/response'

module CustomerServiceClient
  module BaseService
    CONFLICT = 409

    def execute(method, url, params, user_id)
      params = JSON.dump(params.merge(:user_id => user_id))
      begin
        response = RestClient::Request.new(
        method: method,
        url: url,
        user: user_id,
        payload: params,
        headers: {"Content-Type" => "application/json"}).execute
      end
      response
    end


    def response_with(body, code)
      payload = body.blank? ? {} : ActiveSupport::JSON.decode(body)
      binding.pry
      CustomerServiceClient::Response.new(code, payload)
    end

  end
end