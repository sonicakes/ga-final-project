require 'rails_helper'

RSpec.describe ToursController, type: :controller do
  describe "GET index" do

    before do
      get :index
    end

    it 'should pass a @tours object to the view' do
          expect(assigns(:tours)).to be
    end
  end

  describe "GET show" do

    before do
      tour = Tour.create(
        :title => "St Petersburg to Moscow",
        :description => "Foo",
        :price => 500
      )
      get :show, :params => { :id => tour.id }
    end

    it 'should pass a @tour object to the view' do
      expect(assigns(:tour)).to be
    end

  end
end
