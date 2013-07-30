class ProjectsController < ApplicationController
  respond_to :json

  def index
    @projects = Project.order('start_date DESC')
    render 'projects/index'
  end

  def show
    project = Project.find_by_id(params[:id])
    render partial: 'projects/project', locals: { project: project }
  end
end
