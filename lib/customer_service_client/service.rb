require 'customer_service_client/base_service'
require 'customer_service_client/service_urls'
require 'customer_service_client/resources/user'

module CustomerServiceClient
  class Service
    include BaseService
    include ServiceUrls

    def initialize user
      @user = user
    end

    def create params
      customer_response = JSON.parse(execute(:post, new_user_url, params, @user))
      Resources::User.new(customer_response)
    end

    def get params
      user_data = JSON.parse(execute(:get, get_user_url, params, @user))
      Resources::User.new user_data
    end
  end
end