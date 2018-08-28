# == Schema Information
#
# Table name: bookings
#
#  id                :bigint(8)        not null, primary key
#  tour_id           :integer
#  customer_id       :integer
#  payment_reference :string
#  start_date        :date
#  status            :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe Booking, type: :model do

  let(:tour) { Tour.new(
    :title => "Moscow to Lipetsk",
    :description => "A nice trip from Moscow to Lipetsk",
    :price => 2000
  )}
  let(:customer) { Customer.new(
    :email => "test@example.com",
    :password_digest => "chicken"
  )}

  subject {
    described_class.new(
      payment_reference: "12345",
      start_date: '2018-09-24',
      tour: tour,
      customer: customer
    )
  }

  describe "Validations" do
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is valid without payment_reference' do
     subject.payment_reference = nil
    expect(subject).to be_valid
  end

  it 'is not valid without a start_date' do
     subject.start_date = nil
    expect(subject).to_not be_valid
  end
end

describe "Associations" do
  it { should belong_to :customer }
  it { should belong_to :tour }
  it { should have_many :booking_people }
end

end
#tour id should be present
# customer_id should be present
# start date should be present
