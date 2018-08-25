require 'rails_helper'

RSpec.describe Tour, type: :model do
  it "is vaild with valid attributes" do
    expect(Tour.new).to be_valid
  end


  it "is not valid without a title"
  it "is not valid without a description"
  it "is not valid without a price"

  # description not longer than 200
  # price greater than 50
end
