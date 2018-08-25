require 'rails_helper'

RSpec.describe Tour, type: :model do
  it "is valid with valid attributes" do
    tour = Tour.new
    tour.title = "Moscow to Lipetsk"
    tour.description = "A nice trip from Moscow to Lipetsk"
    tour.price = 2000
    expect(tour).to be_valid
  end

  it "is not valid without a title" do
    tour = Tour.new
    #tour.title = "Moscow to Lipetsk"
    tour.description = "A nice trip from Moscow to Lipetsk"
    tour.price = 2000
    expect(tour).to_not be_valid
  end

  it "is not valid without a description" do
    tour = Tour.new
    tour.title = "Moscow to Lipetsk"
    #tour.description = "A nice trip from Moscow to Lipetsk"
    tour.price = 2000
    expect(tour).to_not be_valid
  end

  it "is not valid without a price" do
      tour = Tour.new
      tour.title = "Moscow to Lipetsk"
      tour.description = "A nice trip from Moscow to Lipetsk"
      #tour.price = 2000
      expect(tour).to_not be_valid
  end

    # description not longer than 200
  it "is not valid without a price" do
      tour = Tour.new
      tour.title = "Moscow to Lipetsk"
      tour.description = "A nice trip from Moscow to Lipetsk"
      #tour.price = 2000
      expect(tour).to_not be_valid
  end

  # description not longer than 200
  # price greater than 50
end
