class Api::V1::MovementsController < ApplicationController
  respond_to :json

  def create
    movement = Movement.new(movement_params)
    movement.save
    instance = movement.instance
    render status: 201, location: [:api, instance], json: instance
    # redirect_to [:api, movement.instance]
  end

  def destroy
    # user = User.find_by(auth_token: params[:id])
    # user.generate_authentication_token!
    # user.save
    head 204
  end

private

  def movement_params
    params.require(:movement).permit(:instance_id, :command)
  end

end
