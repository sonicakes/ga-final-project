# == Schema Information
#
# Table name: administrators
#
#  id              :bigint(8)        not null, primary key
#  password_digest :text
#  first_name      :text
#  email           :text
#  last_name       :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe Administrator, type: :model do
  subject {
    described_class.new(
      first_name: "Rowik",
      last_name: 'Boikov',
      email: "test@example.com",
      password_digest: "chicken"
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

  it 'is not valid without password' do
     subject.password_digest = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an email' do
     subject.email = nil
    expect(subject).to_not be_valid
  end

end
# should have email
# should have first and lsat name
# should have password
