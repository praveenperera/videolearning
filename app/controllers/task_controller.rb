class TaskController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_user_joined

  def show
  	project = Project.find(params[:project_id])
  	@tasks = project.tasks.order(:tag)
		@task = @tasks.find(params[:id])
		@next_task = @task.next
		@previous_task = @task.prev
  end

  private
    def authenticate_user_joined
      project = Project.find(params[:project_id])

      joined = false
      if !current_user.nil? && !current_user.projects.nil?
        joined = current_user.projects.include?(project)
      end

      if !joined
        flash[:notice] = "No Permission to this!"
        redirect_to project
      end
    end
end
