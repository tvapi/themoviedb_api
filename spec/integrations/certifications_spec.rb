require 'integration_spec_helper'

describe ThemoviedbApi::Certifications do
  let(:model) { ThemoviedbApi::Certifications.new(ThemoviedbApi::Client.new) }

  describe 'real request' do
    describe '.movie_list' do
      it 'should return response class' do
        model.movie_list.class.should == ThemoviedbApi::Response
      end
    end
  end
end
