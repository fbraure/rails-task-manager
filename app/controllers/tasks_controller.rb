class TasksController < ApplicationController
  before_action :getTask, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end
  def show
  end
  def new
    @task = Task.new
  end
  def create
    @task = Task.new(tasks_params).save
    redirect_to tasks_path
  end
  def edit
  end
  def update
    @task.update(tasks_params)
    redirect_to tasks_path
  end
  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def getTask
    @task = Task.find(params[:id])
  end

  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
