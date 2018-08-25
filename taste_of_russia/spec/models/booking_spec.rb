require 'rails_helper'

RSpec.describe Booking, type: :model do
  subject {
    described_class.new(
      payment_reference: "12345",
      start_date: '2018-09-24'
    )
  }

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
#tour id should be present
# customer_id should be present
# start date should be present
