class TodosController < ApplicationController
  def index
    if user_signed_in?
      @todos = current_user.todos
      else
        @tasks = Task.all
     end
  end

  def show
    todo = Todo.find(params[:todo_id])
    @task = todo.task
    @todos = Todo.where(task_id: @task.id, completed: true)
  end

  def update
    todo = Todo.find(params[:todo_id])
    todo.completed = !todo.completed
    todo.save
    redirect_to todos_path
  end



end
