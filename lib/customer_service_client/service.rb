require 'customer_service_client/base_service'
require 'customer_service_client/service_urls'
require 'customer_service_client/resources/user'

module CustomerServiceClient
  class Service
    include BaseService
    include ServiceUrls
    include Resources

    def initialize user
      @user = user
    end

    def create params
      response = execute(:post, create_user_url, params, @user)
      customer_data = JSON.parse(response)
      User.new customer_data
    end

    def get params
      user_data = JSON.parse(execute(:get, get_user_url, params, @user))
      User.new user_data
    end

    def get_by_id id
      user_data = JSON.parse(execute(:get, get_by_id_url(id), {id: id}, @user))
      Resources::User.new user_data
    end

    def authenticate params
      execute(:get,authenticate_url,params,@user)
    end
  end
end