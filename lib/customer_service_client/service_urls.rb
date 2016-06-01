module CustomerServiceClient
  module ServiceUrls
    def users_url
      "#{root_url}/users"
    end

    def get_user_url
      "#{users_url}/find_user"
    end

    def new_user_url
      "#{users_url}/new"
    end

    private
    def root_url
      @root_url ||= CustomerServiceClient::Configuration.site
    end
  end
end