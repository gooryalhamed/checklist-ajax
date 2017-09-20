class TasksController < ApplicationController
	before_action :find_task, only: [:update, :destroy]
	def index
		@new_task = Task.new
		@incompleted_tasks = Task.where(complete: false)
		@completed_tasks = Task.where(complete: true)
	end
	def create
		@task = Task.create(params_task)
	end

	def update
		@task.update(params_task)
	end

	def destroy
		@task.destroy
	end
	private
	def find_task
		@task = Task.find(params[:id])
	end
	def params_task
		params.require(:task).permit(:name, :complete)
	end
end