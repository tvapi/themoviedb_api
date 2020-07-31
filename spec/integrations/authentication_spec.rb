require "integration_spec_helper"

describe ThemoviedbApi::Authentication do
  let(:client) { ThemoviedbApi::Client.new }
  subject { ThemoviedbApi::Authentication.new(client) }

  describe "real request" do
    describe "#guest_session_new" do
      it "returns valid response" do
        response = subject.guest_session_new
        data = response.body

        expect(data).to be_a(Hash)
        expect(data.keys.sort).to eq(%w(expires_at guest_session_id success))
        expect(response).to be_a(ThemoviedbApi::Response)
      end
    end

    describe "#token_new" do
      it "returns valid response" do
        response = subject.token_new
        data = response.body

        expect(data).to be_a(Hash)
        expect(data.keys.sort).to eq(%w(expires_at request_token success))
        expect(response).to be_a(ThemoviedbApi::Response)
      end
    end

    describe "#session_new" do
      it "returns valid response" do
        response = subject.token_new
        request_token = response.body["request_token"]

        response = subject.session_new(request_token)
        p response
      end
    end
  end
end
