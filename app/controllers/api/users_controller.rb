class Api::UsersController < ApplicationController
  def create
    response = HTTP
      .headers({ "user-key" => "#{Rails.application.credentials.zomato_api[:api_key]}" })
      .get("https://developers.zomato.com/api/v2.1/cities?q=#{params[:city_name]}")

    parsed = response.parse
    p parsed["location_suggestions"][0]["state_code"]

    @user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      location: parsed["location_suggestions"][0]["id"],
      temp_location: params[:temp_location],
      city_name: params[:city_name],
      state_code: parsed["location_suggestions"][0]["state_code"],
    )

    if @user.save!
      render "show.json.jb"
    else
      render json: { error: @user.errors }
    end
  end

  def index
    @user = User.find(current_user.id)
    render "index.json.jb"
  end

  def update
    response = HTTP
      .headers({ "user-key" => "#{Rails.application.credentials.zomato_api[:api_key]}" })
      .get("https://developers.zomato.com/api/v2.1/cities?q=#{params[:city_name]}")
    parsed = response.parse
    p parsed["location_suggestions"][0]["state_code"]

    @user = User.find(params[:id])
    @user.update(
      username: params[:username] || @user.username,
      email: params[:email] || @user.email,
      location: parsed["location_suggestions"][0]["id"] || @user.location,
      temp_location: params[:temp_location] || @user.temp_location,
      city_name: params[:city_name] || @user.city_name,
      state_code: parsed["location_suggestions"][0]["state_code"] || @user.state_code,
    )
    render "show.json.jb"
  end
end
