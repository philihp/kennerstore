class Boardgame < ActiveRecord::Base

  has_many :instances

  validates :title, presence: true

end
