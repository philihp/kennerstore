class Entrant < ActiveRecord::Base

  belongs_to :user
  belongs_to :instance

  validates :user, :instance, presence: true

end
