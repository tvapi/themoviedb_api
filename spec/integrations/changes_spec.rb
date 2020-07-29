require 'integration_spec_helper'

describe ThemoviedbApi::Changes do
  let(:model) { ThemoviedbApi::Changes.new(ThemoviedbApi::Client.new) }

  describe 'real request' do
    describe '.movie_changes' do
      xit 'should return response class' do
        model.movie_changes.class.should == ThemoviedbApi::Response
      end
    end

    describe '.person_changes' do
      xit 'should return response class' do
        model.person_changes.class.should == ThemoviedbApi::Response
      end
    end

    describe '.tv_changes' do
      xit 'should return response class' do
        model.tv_changes.class.should == ThemoviedbApi::Response
      end
    end
  end
end
