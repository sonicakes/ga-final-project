require 'rails_helper'

RSpec.describe PagesController, type: :controller do

describe "GET pages index" do

before do
  get :index
end

  it 'should pass @tours object to the view' do
    expect(assigns(:tours)).to be
  end
end

end
