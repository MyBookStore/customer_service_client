module CustomerServiceClient
  class User

    def initialize user_data
      @user_data = user_data
    end

    def name
      @user_data['name']
    end

    def id
      @user_data['id']
    end

    def email
      @user_data['email']
    end

    def valid?
      !@user_data.empty?
    end
  end
end