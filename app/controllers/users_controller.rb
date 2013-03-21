class UsersController < ApplicationController
  def index
    if request.xhr? && params[:query].present?
      @users = User.search(params[:query])
      render json: @users.map {|u| {id: u.id, name: u.to_s, avatar: u.avatar_url(size: 28)}}.to_json
    else
      redirect_to root_path, alert: 'page not found.'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to @user, notice: 'Profile updated.'
    else
      render "edit"
    end
  end

end