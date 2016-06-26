class Api::V1::BoardgamesController < ApplicationController

  respond_to :json

  def show
    respond_with Boardgame.find(params[:id])
  end
end
