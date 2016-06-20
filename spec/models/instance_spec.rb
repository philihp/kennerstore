require 'rails_helper'

describe Instance, type: :model do
  let(:instance) { FactoryGirl.build :instance }
  subject { instance }

  it { should validate_presence_of :state }
  it { should validate_presence_of :boardgame_id }

  it { should belong_to :boardgame }
end
