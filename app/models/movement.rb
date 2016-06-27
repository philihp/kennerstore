class Movement < ActiveRecord::Base
  belongs_to :instance
  validates :command, presence: true

end
