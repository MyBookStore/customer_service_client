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

    private
    def root_url
      @root_url ||= CustomerServiceClient::Configuration.site
    end
  end
end