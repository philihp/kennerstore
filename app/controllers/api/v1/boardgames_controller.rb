class Api::V1::BoardgamesController < ApplicationController
  def show
    respond_with Boardgame.find(params[:id])
  end
end
