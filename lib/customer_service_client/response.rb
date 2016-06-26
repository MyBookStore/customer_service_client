module CustomerServiceClient
  class Response
    attr_accessor :code, :body

    def initialize(code, payload)
      @code = code
      @body = payload
    end

    def success?
      @code.to_s.start_with? "2"
    end
  end
end