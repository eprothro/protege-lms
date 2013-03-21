class TeamsController < ApplicationController
  layout 'organizations'
  before_filter :set_team_and_organization

  def show
  end

  def edit
  end

  def new
    @team = @organization.teams.new
    render action: 'edit'
  end

  def create
    @team = @organization.teams.create(params[:team])
    if @team.errors.present?
      render action: 'edit'
    else
      redirect_to team_path(@team)
    end
  end

  def update
    if @team.update_attributes(params[:team])
      redirect_to @team, notice: 'Team updated.'
    else
      render "edit"
    end
  end

  def add_member
    user = User.find(params[:id])
    begin
      @team.members << user
    rescue
      redirect_to team_path(@team), flash: { error: 'Error adding member to team, please try again.' }
    else
      redirect_to team_path(@team)
    end
  end

  def destroy
    if @team.destroy
      redirect_to @organization, flash: {notice: 'Team successfully deleted.'}
    else
      redirect_to :back, flash: {error: "Sorry, the team couldn't be deleted, please try again."}
    end
  end

  private

  def set_team_and_organization
    @team = Team.find(params[:team_id]) if params[:team_id].present?
    @team ||= Team.find(params[:id]) if params[:id].present?
    @organization = @team.organization if @team.present?
    @organization ||= Organization.find(params[:organization_id]) if params[:organization_id].present?
  end

end