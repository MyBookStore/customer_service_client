require 'customer_service_client/version'
require 'customer_service_client/service_urls'
require 'customer_service_client/service'
require 'customer_service_client/base_service'
require 'customer_service_client/resources/customer'

module CustomerServiceClient
  class Configuration
    class << self
      attr_accessor :site , :username, :password, :timeout, :caller
    end
  end
end
