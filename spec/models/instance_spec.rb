require 'rails_helper'

describe Instance, type: :model do
  let(:instance) { FactoryGirl.build :instance }
  subject { instance }

  it { should validate_presence_of :state }
  it { should validate_presence_of :boardgame }

  it { should belong_to :boardgame }
  it { should have_many(:users) }
  it { should have_many(:entrants) }
end
