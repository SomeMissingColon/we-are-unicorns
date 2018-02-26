class ProjectsController < ApplicationController
   skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(id)
  end

  private

  def id
    params[:id]
  end
end
