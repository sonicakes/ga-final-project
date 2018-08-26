# == Schema Information
#
# Table name: tours
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :string
#  price       :integer
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Tour, type: :model do

  subject {
    described_class.new(
      title: "Moscow to Lipetsk",
      description: "A nice trip from Moscow to Lipetsk",
      price: 2000
    )
  }
  describe "Validations" do
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid when price is less than 500' do
    subject.price = 250
    expect(subject).to_not be_valid
  end

  it 'is not valid when a description is longer than 200 characters' do
    subject.description = 'A nice trip from Moscow to Lipetsk. A nice trip from Moscow to Lipetsk. A nice trip from Moscow to Lipetsk. A nice trip from Moscow to Lipetsk. A nice trip from Moscow to Lipetsk. A nice trip from Moscow to Lipetsk. A nice trip from Moscow to Lipetsk. A nice trip from Moscow to Lipetsk.'
    expect(subject).to_not be_valid
  end
end

  describe "Associations" do
    it { should have_many :tour_days }
    it { should have_many :bookings }
  end

end
