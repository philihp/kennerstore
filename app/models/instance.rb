
require 'httparty'
class Instance < ActiveRecord::Base
  include HTTParty

  enum state: [:fresh, :recruiting, :started, :finished]
  belongs_to :boardgame
  has_many :entrants
  has_many :users, through: :entrants
  has_many :movements, -> { order :id }

  validates :state, :boardgame, presence: true

  after_initialize :defaults, unless: :persisted?

  def defaults
    self.state = :fresh
  end

  def boardstate
    return {} if fresh?
    movelist = self.movelist.join("\n")
    Rails.cache.fetch([boardgame.service, movelist], :expires => 15.minutes) do
      response = self.class.post(boardgame.service, :query => {
        :actions => movelist
      })
      # Don't really need this, but this is the URL that the service internally caches.
      # @cached_uri = response.request.last_uri
      JSON.parse(response)
    end
  end

  def movelist
    movements.map(&:command)
  end

end
