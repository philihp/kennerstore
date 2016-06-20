require 'rails_helper'

describe Boardgame, type: :model do
  let(:boardgame) { FactoryGirl.build :boardgame }
  subject { boardgame }

  it { should respond_to(:title) }

end
