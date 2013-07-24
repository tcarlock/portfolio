class ProjectsController < ApplicationController
  respond_to :json

  def index
    @projects = Project.all
    render 'projects/index'
  end

  def show
    project = Project.find_by_id(params[:id])
    render partial: 'projects/project', locals: { project: project }
  end
end
