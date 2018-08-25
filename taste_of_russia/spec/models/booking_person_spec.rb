require 'rails_helper'

RSpec.describe BookingPerson, type: :model do

  let(:booking) { Booking.new(
    :payment_reference => "12345",
    :start_date => '2018-09-24'
  )}
    subject {
      described_class.new(
        first_name: "Bob",
        last_name: 'Smith',
        booking: booking
      )
    }
describe "Validations" do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without first name' do
       subject.first_name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a last name' do
       subject.last_name = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it { should belong_to :booking }
  end
end
#should belong to Booking
#should have last and first name
