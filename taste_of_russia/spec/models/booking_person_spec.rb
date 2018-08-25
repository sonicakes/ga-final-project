require 'rails_helper'

RSpec.describe BookingPerson, type: :model do

    subject {
      described_class.new(
        first_name: "Bob",
        last_name: 'Smith'
      )
    }

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
#should belong to Booking
#should have last and first name
