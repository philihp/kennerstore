class Instance < ActiveRecord::Base
  enum state: [:fresh, :recruiting, :started, :finished]
  belongs_to :boardgame
  has_many :entrants
  has_many :users, through: :entrants

  validates :state, :boardgame, presence: true

end
