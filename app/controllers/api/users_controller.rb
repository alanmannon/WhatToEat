class Api::UsersController < ApplicationController
  def create
    @user = User.new(
      username: params[:username],
      email: params[:email],
      location: params[:location],
      temp_location: params[:temp_location],
    )

    if @user.save
      render "show.json.jb"
    else
      render json: { error: @user.errors }
    end
  end

  def show
    @user = User.find(params[:id])
    render "show.json.jb"
  end

  def update
    @user = User.find(params[:id])
    @user.update(
      username: params[:username] || @user.username,
      email: params[:email] || @user.email,
      location: params[:location] || @user.location,
      temp_location: params[:temp_location] || @user.temp_location,
    )
  end
end
