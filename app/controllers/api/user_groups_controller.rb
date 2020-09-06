class Api::UserGroupsController < ApplicationController
  def index
    user_group_init = UserGroup.where(user_id: current_user)
    @user_group = user_group_init.where(group_id: params[:group_id])
    render "index.json.jb"
  end

  def create
    user_id = current_user.id
    @user_group = UserGroup.new(
      user_id: user_id,
      group_id: params[:group_id],
      restaurant_id: params[:restaurant_id],
    )
    p user_id: params[current_user.id]
    if @user_group.save!
      render "show.json.jb"
    else
      render json: { error: @user_group.errors }
    end
  end

  def show
    @user_group = UserGroup.where(user_id: current_user)
    # @user_group = @user_group.where(params[:restaurant_id])
    render "show.json.jb"
  end

  def update
    @user_group = UserGroup.find(params[:id])
    @user_group.update(
      user_id: @user_group.user_id = params[:user_id] || @user_group.user_id,
      group_id: @user_group.group_id = params[:group_id] || @user_group.group_id,
      restaurant_id: @user_group.restaurant_id = params[:restaurant_id] || @user_group.restaurant_id,
    )
    render "show.json.jb"
  end
end
