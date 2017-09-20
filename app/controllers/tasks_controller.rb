class TasksController < ApplicationController
	before_action :find_task, only: [:update, :destroy]
	def index
		@new_task = Task.new
		@incompleted_tasks = Task.where(complete: false)
		@completed_tasks = Task.where(complete: true)
	end
	def create
		@task = Task.create(params_task)
		respond_to do |format|
			format.html { redirect_to tasks_url }
			format.js
		end
	end

	def update
		@task.update(params_task)
		respond_to do |format|
			format.html { redirect_to tasks_url }
			format.js
		end
	end

	def destroy
		@task.destroy
		respond_to do |format|
			format.html { redirect_to tasks_url }
			format.js
		end
	end
	private
	def find_task
		@task = Task.find(params[:id])
	end
	def params_task
		params.require(:task).permit(:name, :complete)
	end
end