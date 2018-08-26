require 'rails_helper'

RSpec.describe Customer, type: :model do
  subject do
    described_class.new(
      email: 'test@example.com',
      password_digest: 'chicken'
    )
  end
  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without password' do
      subject.password_digest = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'Associations' do
    it { should have_many :bookings }
  end
end

# email should be present
# first name should be present
# lsat name should be present
# phone number should be present
