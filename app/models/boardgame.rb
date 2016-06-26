class Boardgame < ActiveRecord::Base

  has_many :instances

  validates :title, :service, presence: true

end
