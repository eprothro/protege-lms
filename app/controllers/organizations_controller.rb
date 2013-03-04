class OrganizationsController < ApplicationController

  def show
    @organization = Organization.find(params[:id])
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def new
    @organization = Organization.new
    render action: 'edit'
  end

  def create
    @organization = Organization.create(params[:organization])

    if @organization.errors.present?
      render action: 'new'
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

end