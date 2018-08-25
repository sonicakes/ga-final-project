require 'rails_helper'

RSpec.describe TourDay, type: :model do

  let(:tour) { Tour.new(
    :title => "Moscow to Lipetsk",
    :description => "A nice trip from Moscow to Lipetsk",
    :price => 2000
  )}

  subject {
    described_class.new(
      title: "Moscow",
      description: 'Walk through Red Square',
      tour: tour
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
  end

  describe "Associations" do
    it { should belong_to :tour }
  end

end
# tour day has to belong to to the Tour

# title cant be empty
# blurb should not be more than 200 characters long
