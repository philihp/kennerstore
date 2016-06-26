class Api::V1::InstancesController < ApplicationController

  before_action :authenticate_with_token!, only: [:create]
  respond_to :json

  def show
    instance = Instance.find(params[:id])
    respond_with instance
  end

  def create
    instance = Instance.new(instance_params)
    if instance.save
      render json: instance, status: 201, location: [:api, instance]
    else
      render json: { errors: instance.errors }, status: 422
    end
  end

private

  def instance_params
    params.require(:instance).permit(:boardgame_id)
  end

end
