require 'rails_helper'

describe Entrant, type: :model do
  let(:entrant) { FactoryGirl.build :entrant }
  subject { entrant }

  it { should belong_to :instance }
  it { should validate_presence_of :instance }

  it { should belong_to :user }
  it { should validate_presence_of :user }


end
