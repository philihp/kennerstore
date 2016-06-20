class Instance < ActiveRecord::Base
  enum state: [:fresh, :recruiting, :started, :finished]
  belongs_to :boardgame

  validates :state, :boardgame_id, presence: true

end
