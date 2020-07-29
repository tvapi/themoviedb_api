require 'integration_spec_helper'

describe ThemoviedbApi::Authentication do
  let(:client) { ThemoviedbApi::Client.new }
  let(:model) { ThemoviedbApi::Authentication.new(client) }

  describe 'real request' do
    describe '.guest_session_new' do
      it 'should return response class' do
        model.token_new.class.should == ThemoviedbApi::Response
      end
    end

    describe '.token_new' do
      xit 'should return response class' do
        model.token_new.class.should == ThemoviedbApi::Response
      end
    end
  end
end
