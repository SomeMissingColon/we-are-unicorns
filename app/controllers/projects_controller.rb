class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,:show]

  def index
    @projects = policy_scope(Project)
  end

  def show
    @project = Project.find(id)
    authorize @project
  end

  def new
    @project = Project.new

    authorize @project
  end

  def create
    new_project = Project.new(project_params)
    new_project.user = current_user
    authorize new_project
    new_project.save!
    redirect_to project_path(new_project)
  end

  def edit
    @project = selected_project
    authorize @project
  end

  def update
    project = selected_project
    authorize project
    project.update(project_params)
    redirect_to project_path(selected_project)
  end

  def destroy
    authorize selected_project
    selected_project.destroy
    redirect_to projects_path
  end

  def search_page
  end

  def search_results
    authorize Project.first
    if params[:query].present?
      @search_projects_results = Project.all.select do |project|
        if project.name.downcase.include?(params[:query].downcase)
          project
        end
      end
    elsif params[:query].nil?
      render :search_page
    elsif params[:query].blank?
      @search_projects_results = []
    end
  end

  private

  def id
    params[:id]
  end

  def selected_project
    Project.find(id)
  end

  def project_params
    params.require(:project).permit(:name, :description, :photo, :focus_area_id)
  end
end
