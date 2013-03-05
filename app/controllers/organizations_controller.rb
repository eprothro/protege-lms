class OrganizationsController < ApplicationController

  def show
    @organization = Organization.find(params[:id])
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def new
    @organization = Organization.new(creator_id: current_user.id)
    render action: 'edit'
  end

  def create
    @organization = Organization.create(params[:organization])

    if @organization.errors.present?
      render action: 'edit'
    else
      redirect_to organization_path(@organization)
    end
  end

  def update
    @organization = Organization.find(params[:id])

    if @organization.update_attributes(params[:organization])
      redirect_to @organization, notice: 'Profile updated.'
    else
      render "edit"
    end
  end

  def destroy
    @organization = Organization.find(params[:id])

    if @organization.destroy
      redirect_to user_path(current_user), flash: {notice: 'Organization successfully deleted.'}
    else
      redirect_to :back, flash: {error: "Sorry, the organization couldn't be deleted, please try again."}
    end
  end

end