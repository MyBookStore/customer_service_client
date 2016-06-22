module CustomerServiceClient
  module ServiceUrls
    def users_url
      "#{root_url}/users"
    end

    def get_user_url
      "#{users_url}/user"
    end

    def create_user_url
      "#{users_url}/create"
    end

    def authenticate_url
      "#{users_url}/:id/login"
    end

    def get_by_id_url id
      "#{users_url}/#{id}"
    end

    private
    def root_url
      @root_url ||= CustomerServiceClient::Configuration.site
    end
  end
end