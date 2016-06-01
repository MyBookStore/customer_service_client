require 'spec_helper'
module CustomerServiceClient
  describe :ServiceUrls do
    include ServiceUrls
    before(:each) do
      allow(CustomerServiceClient::Configuration).to receive(:site).and_return('localhost:7000')
    end

    describe '#users_url' do
      it "should return the get all users url" do
        expect(users_url).to eq('localhost:7000/users')
      end
    end

    describe '#user_url' do
      it "should return the get a user url" do
        expect(get_user_url(1)).to eq('localhost:7000/users/1')
      end
    end

    describe '#new_user_url' do
      it "should return the new user creation url" do
        expect(new_user_url).to eq('localhost:7000/users/new')
      end
    end

  end
end