module CustomerServiceClient
  class Response
    attr_accessor :code, :body
    attr_reader :errors

    def initialize(code, payload)
      @code = code
      @body = payload
      @errors = errors
    end

    def success?
      @code.to_s.start_with? "2"
    end
  end
end