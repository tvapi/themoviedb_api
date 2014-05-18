require 'integration_spec_helper'

describe ThemoviedbApi::Authentication do
  let(:model) { ThemoviedbApi::Authentication.new(ThemoviedbApi::Client.new) }

  describe 'real request' do
    describe '.token_new' do
      it 'should return response class' do
        model.token_new.class.should == ThemoviedbApi::Response
      end
    end

    describe '.guest_session_new' do
      it 'should return response class' do
        model.token_new.class.should == ThemoviedbApi::Response
      end
    end
  end
end
