class Api::V1::MovementsController < ApplicationController
  respond_to :json

  def show
    movement = Movement.find(params[:id])
    respond_with movement
  end

  def create
    movement = Movement.new(movement_params)
    movement.save
    render status: 201, location: [:api, movement], json: movement
    # redirect_to [:api, movement.instance]
  end

  def destroy
    instance = Instance.find(params[:id])
    if instance && instance.movements.size > 0
      instance.movements.last.destroy!
      head 204
    else
      head 404
    end
  end

private

  def movement_params
    params.require(:movement).permit(:instance_id, :command)
  end

end
