require 'customer_service_client/base_service'
require 'customer_service_client/service_urls'

module CustomerServiceClient
  class Service
    include BaseService
    include ServiceUrls

    def initialize user
      @user = user
    end

    def new params
      customer_data = JSON.parse(execute(:post, new_user_url, params, @user))
      User.new customer_data
    end

    def get_customer params
      user_data = JSON.parse(execute(:get, get_user_url, params, @user))
      User.new user_data
    end
  end
end