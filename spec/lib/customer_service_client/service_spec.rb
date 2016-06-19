module CustomerServiceClient
  describe :Service do
    include BaseService
    include ServiceUrls

    let(:test_user_id) { 'test-user' }
    let(:dummy_customer_json) {
      {
          name: 'John',
          email: 'john@gmail.com',
          password: 'password',
          password_confirmation: 'password'
      }
    }

    before(:each) do
      CustomerServiceClient::Configuration.site = 'http://localhost:4002'
      CustomerServiceClient::Configuration.username = 'foo'
      CustomerServiceClient::Configuration.password = 'bar'
      CustomerServiceClient::Configuration.timeout = 150
    end

    describe '#create' do
      context 'when params are valid' do
        it 'should create a customer with given params' do
          customer_service = CustomerServiceClient::Service.new(test_user_id)

          customer = customer_service.create(dummy_customer_json)
          expect(customer.name).to eq 'John'
          expect(customer.email).to eq 'john@gmail.com'
        end
      end
    end

    describe '#get' do
      it 'should get the customer of given email id' do
        customer_service = CustomerServiceClient::Service.new(test_user_id)
        customer = customer_service.create(dummy_customer_json)
        params = {
            email: 'ks@gmail.com',
            password: '1234569'
        }
        customer_service.get(params)
      end
    end
  end
end
