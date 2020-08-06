class Api::GroupsController < ApplicationController
  def index
    @groups = Group.all
    render "index.json.jb"
  end

  def show
    @group = Group.find(params[:id])
    render "show.json.jb"
  end

  def update
    @group = Group.find(params[:id])

    @group.name = params[:name] || @group.name
    # @group.restaurant_id = params[:restaurant_id] || @group.restaurant_id

    if @group.save
      render "show.json.jb"
    else 
      render json: {error: group.errors }
    end
  end
end
