require 'integration_spec_helper'

describe ThemoviedbApi::Certification do
  let(:model) { ThemoviedbApi::Certification.new(ThemoviedbApi::Client.new) }

  describe 'real request' do
    describe '.movie_list' do
      it 'should return response class' do
        model.movie_list.class.should == ThemoviedbApi::Response
      end
    end
  end
end
